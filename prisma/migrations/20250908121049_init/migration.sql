-- CreateEnum
CREATE TYPE "public"."Allowances" AS ENUM ('MA', 'HRA', 'FA');

-- CreateEnum
CREATE TYPE "public"."Deductions" AS ENUM ('PF', 'IT', 'PT');

-- CreateEnum
CREATE TYPE "public"."UserStatus" AS ENUM ('ACTIVE', 'ONHOLD', 'TERMINATED', 'RESIGNED');

-- CreateEnum
CREATE TYPE "public"."PayrollAssignStatus" AS ENUM ('ACTIVE', 'PENDING');

-- CreateEnum
CREATE TYPE "public"."ProjectStatus" AS ENUM ('PENDING', 'ACTIVE', 'COMPLETED', 'INACTIVE');

-- CreateEnum
CREATE TYPE "public"."Leaves" AS ENUM ('CL', 'PL', 'ML');

-- CreateEnum
CREATE TYPE "public"."Egender" AS ENUM ('male', 'female', 'other');

-- CreateEnum
CREATE TYPE "public"."ERole" AS ENUM ('USER', 'ADMIN', 'MANAGER');

-- CreateTable
CREATE TABLE "public"."User" (
    "id" SERIAL NOT NULL,
    "empId" TEXT NOT NULL,
    "ceId" TEXT NOT NULL,
    "fName" TEXT NOT NULL,
    "mName" TEXT,
    "lName" TEXT NOT NULL,
    "nationality" TEXT,
    "dob" TIMESTAMP(3),
    "gender" "public"."Egender",
    "maritalStatus" TEXT,
    "userMobileNo" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "fatherName" TEXT,
    "motherName" TEXT,
    "jobTitle" TEXT,
    "workStationId" TEXT,
    "aaddharNo" TEXT NOT NULL,
    "panNo" TEXT NOT NULL,
    "bloodGrp" TEXT,
    "uanNo" TEXT,
    "passportNo" TEXT,
    "healthCardNo" TEXT,
    "bankName" TEXT NOT NULL,
    "ifscCode" TEXT NOT NULL,
    "bnkacuntNo" TEXT NOT NULL,
    "grade" TEXT,
    "designation" TEXT,
    "joiningDate" TIMESTAMP(3),
    "confirmationdate" TIMESTAMP(3),
    "supervisorId" INTEGER,
    "roleId" INTEGER NOT NULL,
    "departmentId" INTEGER,
    "branchId" INTEGER,
    "confirmedById" INTEGER,
    "modifiedById" INTEGER,
    "createdById" INTEGER,
    "payrollID" INTEGER,
    "lastModified" TIMESTAMP(3),
    "empStatus" "public"."UserStatus" NOT NULL DEFAULT 'ACTIVE',
    "payrollAssignStatus" "public"."PayrollAssignStatus" NOT NULL DEFAULT 'ACTIVE',
    "nomineeId" INTEGER,
    "permanentAddressId" INTEGER,
    "currentAddressId" INTEGER,
    "profilePicEnabled" BOOLEAN NOT NULL DEFAULT false,
    "profilePicFileName" TEXT,
    "fileDir" TEXT,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."salarylogs" (
    "id" SERIAL NOT NULL,
    "salaryInitiatedById" INTEGER NOT NULL,
    "totalAmount" INTEGER NOT NULL,
    "issuedDate" TIMESTAMP(3) NOT NULL,
    "salaryYearMonth" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "salarylogs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Timesheets" (
    "id" SERIAL NOT NULL,
    "empid" INTEGER NOT NULL,
    "projectId" INTEGER NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "enterTime" TIMESTAMP(3) NOT NULL,
    "exitTime" TIMESTAMP(3) NOT NULL,
    "task" TEXT NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "Timesheets_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Expenselog" (
    "id" SERIAL NOT NULL,
    "appliedById" INTEGER NOT NULL,
    "remarks" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "fileDir" TEXT NOT NULL,
    "billFilesEnabled" BOOLEAN NOT NULL,
    "billFiles" TEXT[],
    "updatedOn" TIMESTAMP(3) NOT NULL,
    "totalAmount" INTEGER NOT NULL,
    "status" INTEGER NOT NULL,
    "updatedById" INTEGER NOT NULL,

    CONSTRAINT "Expenselog_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."expenceList" (
    "id" SERIAL NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "amount" INTEGER NOT NULL,
    "descriptions" TEXT NOT NULL,
    "expenseid" INTEGER NOT NULL,

    CONSTRAINT "expenceList_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."leaveType" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "shortname" "public"."Leaves" NOT NULL,
    "createdById" INTEGER NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "leaveType_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."financeyearlists" (
    "id" SERIAL NOT NULL,
    "financeyearname" TEXT NOT NULL,
    "startDate" TIMESTAMP(3) NOT NULL,
    "endDate" TIMESTAMP(3) NOT NULL,
    "activeStatus" INTEGER NOT NULL,

    CONSTRAINT "financeyearlists_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Project" (
    "id" SERIAL NOT NULL,
    "projectCode" TEXT NOT NULL,
    "projectName" TEXT NOT NULL,
    "status" "public"."ProjectStatus" NOT NULL,
    "departmentId" TEXT NOT NULL,
    "projectClientId" INTEGER,

    CONSTRAINT "Project_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."ProjectClient" (
    "id" SERIAL NOT NULL,
    "clientCode" TEXT NOT NULL,
    "clientName" TEXT NOT NULL,
    "clientEmailId" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "addressId" INTEGER NOT NULL,
    "createdById" INTEGER NOT NULL,
    "modifiedById" INTEGER NOT NULL,

    CONSTRAINT "ProjectClient_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Nominee" (
    "id" SERIAL NOT NULL,
    "status" INTEGER NOT NULL,
    "nomineeName" TEXT NOT NULL,
    "nonineeAaaddhar" TEXT NOT NULL,

    CONSTRAINT "Nominee_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Payrolldetail" (
    "id" SERIAL NOT NULL,
    "createdById" INTEGER NOT NULL,
    "updatedById" INTEGER NOT NULL,
    "upDateOn" TIMESTAMP(3) NOT NULL,
    "isPayableStatus" INTEGER NOT NULL DEFAULT 1,
    "baseSalary" INTEGER NOT NULL,

    CONSTRAINT "Payrolldetail_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Payslip" (
    "id" SERIAL NOT NULL,
    "employeeId" INTEGER NOT NULL,
    "baseSalary" INTEGER NOT NULL,
    "gettingAmount" INTEGER NOT NULL,
    "amountInWords" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "payrollId" INTEGER NOT NULL,
    "salarylogsId" INTEGER,

    CONSTRAINT "Payslip_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Allowance" (
    "id" SERIAL NOT NULL,
    "name" "public"."Allowances" NOT NULL,
    "amount" INTEGER NOT NULL,
    "payrollDetailId" INTEGER NOT NULL,

    CONSTRAINT "Allowance_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Deduction" (
    "id" SERIAL NOT NULL,
    "name" "public"."Deductions" NOT NULL,
    "amount" INTEGER NOT NULL,
    "payrollDetailId" INTEGER NOT NULL,

    CONSTRAINT "Deduction_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Address" (
    "id" SERIAL NOT NULL,
    "address" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "district" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "country" TEXT NOT NULL,
    "pincode" TEXT NOT NULL,

    CONSTRAINT "Address_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."UserSkils" (
    "id" SERIAL NOT NULL,
    "skillId" TEXT NOT NULL,
    "skillName" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "UserSkils_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Department" (
    "id" SERIAL NOT NULL,
    "dptId" TEXT NOT NULL,
    "dptName" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "createdByid" INTEGER NOT NULL,

    CONSTRAINT "Department_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."OffcBranch" (
    "id" SERIAL NOT NULL,
    "officeName" TEXT NOT NULL,
    "officeCode" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "remarks" TEXT NOT NULL,
    "addressId" INTEGER NOT NULL,

    CONSTRAINT "OffcBranch_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Education" (
    "id" SERIAL NOT NULL,
    "eduName" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "Education_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Certificate" (
    "id" SERIAL NOT NULL,
    "cerName" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "Certificate_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Language" (
    "id" SERIAL NOT NULL,
    "language" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "Language_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."allowanceType" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "shortName" "public"."Allowances" NOT NULL,
    "createdbyId" INTEGER NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "allowanceType_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."deductionType" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "shortName" "public"."Deductions" NOT NULL,
    "createdbyId" INTEGER NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "deductionType_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."leavemaster" (
    "id" SERIAL NOT NULL,
    "financialYear" TIMESTAMP(3) NOT NULL,
    "startDate" TIMESTAMP(3) NOT NULL,
    "endDate" TIMESTAMP(3) NOT NULL,
    "description" TEXT NOT NULL,
    "createdById" INTEGER NOT NULL,

    CONSTRAINT "leavemaster_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."leaveCount" (
    "id" SERIAL NOT NULL,
    "leavetype" "public"."Leaves" NOT NULL,
    "value" INTEGER NOT NULL,
    "leavemasterId" INTEGER NOT NULL,

    CONSTRAINT "leaveCount_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."leaveAssignUser" (
    "id" SERIAL NOT NULL,
    "financialYear" TEXT NOT NULL,
    "createdBy_userId" INTEGER NOT NULL,
    "assignUser_userId" INTEGER NOT NULL,
    "updatedBy_userid" INTEGER NOT NULL,
    "updatedOn" TIMESTAMP(3) NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "leaveAssignUser_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."leaveMaintain" (
    "id" SERIAL NOT NULL,
    "key" TEXT NOT NULL,
    "value" INTEGER NOT NULL,
    "leaveAssignUserId" INTEGER NOT NULL,

    CONSTRAINT "leaveMaintain_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."leavelog" (
    "id" SERIAL NOT NULL,
    "leavetype" "public"."Leaves" NOT NULL,
    "startDate" TIMESTAMP(3) NOT NULL,
    "endDate" TIMESTAMP(3) NOT NULL,
    "leaveDays" INTEGER NOT NULL,
    "status" INTEGER NOT NULL,
    "updatedOn" TIMESTAMP(3) NOT NULL,
    "description" TIMESTAMP(3) NOT NULL,
    "appliedByuserId" INTEGER NOT NULL,
    "updatedByuserId" INTEGER NOT NULL,

    CONSTRAINT "leavelog_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Role" (
    "id" SERIAL NOT NULL,
    "name" "public"."ERole" NOT NULL,

    CONSTRAINT "Role_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."MenuItem" (
    "id" SERIAL NOT NULL,
    "label" TEXT NOT NULL,
    "icon" TEXT NOT NULL,
    "path" TEXT NOT NULL,
    "parentId" INTEGER,

    CONSTRAINT "MenuItem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."RoleMenu" (
    "roleId" INTEGER NOT NULL,
    "menuItemId" INTEGER NOT NULL,

    CONSTRAINT "RoleMenu_pkey" PRIMARY KEY ("roleId","menuItemId")
);

-- CreateTable
CREATE TABLE "public"."_ProjectToUser" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,

    CONSTRAINT "_ProjectToUser_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_userMobileNo_key" ON "public"."User"("userMobileNo");

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "public"."User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "User_aaddharNo_key" ON "public"."User"("aaddharNo");

-- CreateIndex
CREATE UNIQUE INDEX "User_panNo_key" ON "public"."User"("panNo");

-- CreateIndex
CREATE UNIQUE INDEX "Department_dptId_key" ON "public"."Department"("dptId");

-- CreateIndex
CREATE UNIQUE INDEX "Role_name_key" ON "public"."Role"("name");

-- CreateIndex
CREATE INDEX "_ProjectToUser_B_index" ON "public"."_ProjectToUser"("B");

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_supervisorId_fkey" FOREIGN KEY ("supervisorId") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES "public"."Role"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_departmentId_fkey" FOREIGN KEY ("departmentId") REFERENCES "public"."Department"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_branchId_fkey" FOREIGN KEY ("branchId") REFERENCES "public"."OffcBranch"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_confirmedById_fkey" FOREIGN KEY ("confirmedById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_modifiedById_fkey" FOREIGN KEY ("modifiedById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_payrollID_fkey" FOREIGN KEY ("payrollID") REFERENCES "public"."Payrolldetail"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_nomineeId_fkey" FOREIGN KEY ("nomineeId") REFERENCES "public"."Nominee"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_permanentAddressId_fkey" FOREIGN KEY ("permanentAddressId") REFERENCES "public"."Address"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_currentAddressId_fkey" FOREIGN KEY ("currentAddressId") REFERENCES "public"."Address"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."salarylogs" ADD CONSTRAINT "salarylogs_salaryInitiatedById_fkey" FOREIGN KEY ("salaryInitiatedById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Timesheets" ADD CONSTRAINT "Timesheets_empid_fkey" FOREIGN KEY ("empid") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Timesheets" ADD CONSTRAINT "Timesheets_projectId_fkey" FOREIGN KEY ("projectId") REFERENCES "public"."Project"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Expenselog" ADD CONSTRAINT "Expenselog_appliedById_fkey" FOREIGN KEY ("appliedById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Expenselog" ADD CONSTRAINT "Expenselog_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."expenceList" ADD CONSTRAINT "expenceList_expenseid_fkey" FOREIGN KEY ("expenseid") REFERENCES "public"."Expenselog"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."leaveType" ADD CONSTRAINT "leaveType_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Project" ADD CONSTRAINT "Project_departmentId_fkey" FOREIGN KEY ("departmentId") REFERENCES "public"."Department"("dptId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Project" ADD CONSTRAINT "Project_projectClientId_fkey" FOREIGN KEY ("projectClientId") REFERENCES "public"."ProjectClient"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."ProjectClient" ADD CONSTRAINT "ProjectClient_addressId_fkey" FOREIGN KEY ("addressId") REFERENCES "public"."Address"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."ProjectClient" ADD CONSTRAINT "ProjectClient_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."ProjectClient" ADD CONSTRAINT "ProjectClient_modifiedById_fkey" FOREIGN KEY ("modifiedById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Payrolldetail" ADD CONSTRAINT "Payrolldetail_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Payrolldetail" ADD CONSTRAINT "Payrolldetail_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Payslip" ADD CONSTRAINT "Payslip_employeeId_fkey" FOREIGN KEY ("employeeId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Payslip" ADD CONSTRAINT "Payslip_payrollId_fkey" FOREIGN KEY ("payrollId") REFERENCES "public"."Payrolldetail"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Payslip" ADD CONSTRAINT "Payslip_salarylogsId_fkey" FOREIGN KEY ("salarylogsId") REFERENCES "public"."salarylogs"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Allowance" ADD CONSTRAINT "Allowance_payrollDetailId_fkey" FOREIGN KEY ("payrollDetailId") REFERENCES "public"."Payrolldetail"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Deduction" ADD CONSTRAINT "Deduction_payrollDetailId_fkey" FOREIGN KEY ("payrollDetailId") REFERENCES "public"."Payrolldetail"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."UserSkils" ADD CONSTRAINT "UserSkils_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Department" ADD CONSTRAINT "Department_createdByid_fkey" FOREIGN KEY ("createdByid") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."OffcBranch" ADD CONSTRAINT "OffcBranch_addressId_fkey" FOREIGN KEY ("addressId") REFERENCES "public"."Address"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Education" ADD CONSTRAINT "Education_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Certificate" ADD CONSTRAINT "Certificate_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Language" ADD CONSTRAINT "Language_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."allowanceType" ADD CONSTRAINT "allowanceType_createdbyId_fkey" FOREIGN KEY ("createdbyId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."deductionType" ADD CONSTRAINT "deductionType_createdbyId_fkey" FOREIGN KEY ("createdbyId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."leavemaster" ADD CONSTRAINT "leavemaster_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."leaveCount" ADD CONSTRAINT "leaveCount_leavemasterId_fkey" FOREIGN KEY ("leavemasterId") REFERENCES "public"."leavemaster"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."leaveAssignUser" ADD CONSTRAINT "leaveAssignUser_createdBy_userId_fkey" FOREIGN KEY ("createdBy_userId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."leaveAssignUser" ADD CONSTRAINT "leaveAssignUser_assignUser_userId_fkey" FOREIGN KEY ("assignUser_userId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."leaveAssignUser" ADD CONSTRAINT "leaveAssignUser_updatedBy_userid_fkey" FOREIGN KEY ("updatedBy_userid") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."leaveMaintain" ADD CONSTRAINT "leaveMaintain_leaveAssignUserId_fkey" FOREIGN KEY ("leaveAssignUserId") REFERENCES "public"."leaveAssignUser"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."leavelog" ADD CONSTRAINT "leavelog_appliedByuserId_fkey" FOREIGN KEY ("appliedByuserId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."leavelog" ADD CONSTRAINT "leavelog_updatedByuserId_fkey" FOREIGN KEY ("updatedByuserId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."MenuItem" ADD CONSTRAINT "MenuItem_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES "public"."MenuItem"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."RoleMenu" ADD CONSTRAINT "RoleMenu_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES "public"."Role"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."RoleMenu" ADD CONSTRAINT "RoleMenu_menuItemId_fkey" FOREIGN KEY ("menuItemId") REFERENCES "public"."MenuItem"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."_ProjectToUser" ADD CONSTRAINT "_ProjectToUser_A_fkey" FOREIGN KEY ("A") REFERENCES "public"."Project"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."_ProjectToUser" ADD CONSTRAINT "_ProjectToUser_B_fkey" FOREIGN KEY ("B") REFERENCES "public"."User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
