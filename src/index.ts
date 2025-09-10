import { mongoClient, prisma } from "./config.js";

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
  } catch (error) {
    console.log(error);
  }
}

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
  } catch (error) {}
}
