import { mongoClient, prisma } from "./config.js";

//4th
async function M_Certificates() {
  try {
    await mongoClient.connect();

    const mongoDb = mongoClient.db("myhrmTestdb");
    const collection = mongoDb.collection("certificates");

    const cursor = collection.find();

    for await (const doc of cursor) {
      await prisma.certificate.create({
        data: {
          cerName: doc.cerName,
          description: doc.description,
          id: doc._id.toString(),
        },
      });
    }

    console.log("M_Certificates done");
  } catch (error) {
    console.log(error);
  }
}

//5th
async function M_education() {
  try {
    await mongoClient.connect();

    const mongoDb = mongoClient.db("myhrmTestdb");
    const collection = mongoDb.collection("educations");

    const cursor = collection.find();

    for await (const doc of cursor) {
      await prisma.education.create({
        data: {
          description: doc.description,
          eduName: doc.eduName,
          id: doc._id.toString(),
        },
      });
    }

    console.log("M_education done");
  } catch (error) {
    console.log(error);
  }
}

async function M_user() {
  try {
    await mongoClient.connect();

    const mongoDb = mongoClient.db("myhrmTestdb");
    const Usercollection = mongoDb.collection("users");

    const allowanceCollection = mongoDb.collection("allowancetypes");

    const cursor = Usercollection.find();

    for await (const doc of cursor) {
      const userId = doc._id.toString();

      const allowances = await allowanceCollection
        .find({ createdBy: userId })
        .toArray();

      const allowanceData = allowances.map((a) => ({
        name: a.name,
        description: a.description,
        shortName: a.shortName,
        id: a._id.toString(),
      }));

      // departments,leavelog,leavemaster, allowancetype,deductiontype,branch,address, nominee, leavetype

      // await prisma.user.create({

      //   data: {
      //     aaddharNo: doc.aaddharNo,
      //     bankName: doc.bankName,
      //     bnkacuntNo: doc.bnkacuntNo,
      //     ceId: doc.ceId,
      //     email: doc.email,
      //     empId: doc.empId,
      //     fName: doc.fName,
      //     ifscCode: doc.ifscCode,
      //     lName: doc.lName,
      //     panNo: doc.panNo,
      //     password: doc.password,
      //     userMobileNo: doc.userMobileNo,

      //     allowanceCreated: {
      //       create: allowanceData
      //     },
      //     assignedProjects :{

      //     }
      //   }
      // });
    }
  } catch (error) {
    console.error("Error migrating users:", error);
  }
}

// 1st
async function M_role() {
  try {
    await prisma.role.createMany({
      data: [{ name: "Admin" }, { name: "Manager" }, { name: "user" }],
    });
    console.log("M_role done");
  } catch (error) {}
}

// 2nd
async function menuItem() {
  try {
    await mongoClient.connect();

    const mongoDb = mongoClient.db("myhrmTestdb");
    const mainsidemenus = mongoDb.collection("mainsidemenus");

    const cursor = mainsidemenus.find();

    for await (const doc of cursor) {
      console.log(doc._id.toString());

      const roleidarr: number[] = doc.userRole;

      const converted = roleidarr.map((val) => ({ roleId: val.toString() }));

      await prisma.menuItem.create({
        data: {
          icon: doc.icon,
          label: doc.name,
          path: doc.path,
          parentId: null,
          id: doc._id.toString(),
          roleMenus: {
            createMany: {
              data: converted,
            },
          },
        },
      });
    }

    console.log("menuItem done");
  } catch (error) {
    console.log(error);
  }
}

// 3rd
async function childItem() {
  try {
    await mongoClient.connect();

    const mongoDb = mongoClient.db("myhrmTestdb");
    const childsidemenus = mongoDb.collection("childsidemenus");

    const c = childsidemenus.find();

    for await (const doc of c) {
      console.log(doc._id.toString());
      const roleidarr: number[] = doc.userRole;

      const converted = roleidarr.map((val) => ({ roleId: val.toString() }));

      await prisma.menuItem.create({
        data: {
          icon: doc.icon,
          id: doc._id.toString(),
          label: doc.name,
          path: doc.path,
          parentId: doc.mainMenuId,
          roleMenus: {
            createMany: {
              data: converted,
            },
          },
        },
      });
    }
  } catch (error) {
    console.log(error);
  }
}

async function language() {
  try {
    await mongoClient.connect();

    const mongoDb = mongoClient.db("myhrmTestdb");
    const allmenus = mongoDb.collection("languages");

    const c = allmenus.find();

    for await (const doc of c) {
      await prisma.language.create({
        data: {
          description: doc.description,
          language: doc.language,
          id: doc._id.toString(),
        },
      });
    }
    console.log("language done");
  } catch (error) {
    console.log(error);
  }
}

async function branch() {
  try {
    await mongoClient.connect();

    const mongoDb = mongoClient.db("myhrmTestdb");
    const allmenus = mongoDb.collection("offcbranches");

    const c = allmenus.find();

    for await (const doc of c) {
      await prisma.offcBranch.create({
        data: {
          address: doc.address,
          description: doc.description,
          officeCode: doc.officeCode,
          officeName: doc.officeName,
          remarks: doc.remarks,
          country: doc.country,
          id: doc._id.toString(),
        },
      });
    }
    console.log("branch done");
  } catch (error) {
    console.log(error);
  }
}

async function department() {
  try {
    await mongoClient.connect();

    const mongoDb = mongoClient.db("myhrmTestdb");
    const allmenus = mongoDb.collection("departments");

    const c = allmenus.find();

    for await (const doc of c) {
      await prisma.department.create({
        data: {
          description: doc.description,
          dptId: doc.dptId,
          dptName: doc.dptName,
          id: doc._id.toString(),
        },
      });
    }
  } catch (error) {
    console.log(error);
  }
}

async function leavelogs() {
  await mongoClient.connect();

  const mongoDb = mongoClient.db("myhrmTestdb");
  const allmenus = mongoDb.collection("leavelogs");

  const c = allmenus.find();

  for await (const doc of c) {
    await prisma.leavelog.create({
      data: {
        description: doc.description,
        endDate: new Date(doc.endDate),
        startDate: new Date(doc.startDate),
        leaveDays: doc.leaveDays,
        leavetype: doc.leaveType,
        status: doc.status,
        updatedOn: doc.updatedOn,
        id: doc._id.toString(),
      },
    });
  }
}

async function leaveAssignUser() {
  await mongoClient.connect();

  const mongoDb = mongoClient.db("myhrmTestdb");
  const allmenus = mongoDb.collection("leaveassignusrs");

  const c = allmenus.find();

  for await (const doc of c) {
    const tempArr = doc.leaveField;

    await prisma.leaveAssignUser.create({
      data: {
        id: doc._id.toString(),
        financialYear: doc.financialYear,
        description: doc.description,
        leaveMaintain: {
          createMany: {
            data: tempArr,
          },
        },
      },
    });
  }

  console.log("leaveAssignUser done");
}

leaveAssignUser();
