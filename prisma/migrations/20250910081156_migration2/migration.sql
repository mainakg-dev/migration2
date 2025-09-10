/*
  Warnings:

  - The primary key for the `Address` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Allowance` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Certificate` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Deduction` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Department` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Education` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `userId` on the `Education` table. All the data in the column will be lost.
  - The primary key for the `Expenselog` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Language` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `userId` on the `Language` table. All the data in the column will be lost.
  - The primary key for the `MenuItem` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Nominee` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `OffcBranch` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `addressId` on the `OffcBranch` table. All the data in the column will be lost.
  - The primary key for the `Payrolldetail` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Payslip` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Project` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `ProjectClient` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `addressId` on the `ProjectClient` table. All the data in the column will be lost.
  - The primary key for the `Role` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `RoleMenu` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Timesheets` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `User` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `payrollID` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `roleId` on the `User` table. All the data in the column will be lost.
  - The primary key for the `UserSkils` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `userId` on the `UserSkils` table. All the data in the column will be lost.
  - The primary key for the `_ProjectToUser` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `allowanceType` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `deductionType` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `expenceList` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `financeyearlists` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `leaveAssignUser` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `leaveCount` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `leaveMaintain` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `leaveType` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `leavelog` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `leavemaster` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `salarylogs` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - A unique constraint covering the columns `[projectId]` on the table `Expenselog` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[nomineeId]` on the table `User` will be added. If there are existing duplicate values, this will fail.
  - Changed the type of `name` on the `Allowance` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `name` on the `Deduction` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Added the required column `projectId` to the `Expenselog` table without a default value. This is not possible if the table is not empty.
  - Added the required column `address` to the `OffcBranch` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdbyId` to the `OffcBranch` table without a default value. This is not possible if the table is not empty.
  - Added the required column `payrollUserId` to the `Payrolldetail` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdById` to the `Payslip` table without a default value. This is not possible if the table is not empty.
  - Added the required column `issuedDate` to the `Payslip` table without a default value. This is not possible if the table is not empty.
  - Added the required column `address` to the `ProjectClient` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `name` on the `Role` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Made the column `branchId` on table `User` required. This step will fail if there are existing NULL values in that column.
  - Changed the type of `shortName` on the `allowanceType` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `shortName` on the `deductionType` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `leavetype` on the `leaveCount` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `shortname` on the `leaveType` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `leavetype` on the `leavelog` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Added the required column `updatedAt` to the `leavemaster` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "public"."TaskPriority" AS ENUM ('LOW', 'MEDIUM', 'HIGH');

-- CreateEnum
CREATE TYPE "public"."TaskStatus" AS ENUM ('PENDING', 'INPROGRESS', 'COMPLETED', 'BLOCKED');

-- DropForeignKey
ALTER TABLE "public"."Allowance" DROP CONSTRAINT "Allowance_payrollDetailId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Certificate" DROP CONSTRAINT "Certificate_userId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Deduction" DROP CONSTRAINT "Deduction_payrollDetailId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Department" DROP CONSTRAINT "Department_createdByid_fkey";

-- DropForeignKey
ALTER TABLE "public"."Education" DROP CONSTRAINT "Education_userId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Expenselog" DROP CONSTRAINT "Expenselog_appliedById_fkey";

-- DropForeignKey
ALTER TABLE "public"."Expenselog" DROP CONSTRAINT "Expenselog_updatedById_fkey";

-- DropForeignKey
ALTER TABLE "public"."Language" DROP CONSTRAINT "Language_userId_fkey";

-- DropForeignKey
ALTER TABLE "public"."MenuItem" DROP CONSTRAINT "MenuItem_parentId_fkey";

-- DropForeignKey
ALTER TABLE "public"."OffcBranch" DROP CONSTRAINT "OffcBranch_addressId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Payrolldetail" DROP CONSTRAINT "Payrolldetail_createdById_fkey";

-- DropForeignKey
ALTER TABLE "public"."Payrolldetail" DROP CONSTRAINT "Payrolldetail_updatedById_fkey";

-- DropForeignKey
ALTER TABLE "public"."Payslip" DROP CONSTRAINT "Payslip_employeeId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Payslip" DROP CONSTRAINT "Payslip_payrollId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Payslip" DROP CONSTRAINT "Payslip_salarylogsId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Project" DROP CONSTRAINT "Project_projectClientId_fkey";

-- DropForeignKey
ALTER TABLE "public"."ProjectClient" DROP CONSTRAINT "ProjectClient_addressId_fkey";

-- DropForeignKey
ALTER TABLE "public"."ProjectClient" DROP CONSTRAINT "ProjectClient_createdById_fkey";

-- DropForeignKey
ALTER TABLE "public"."ProjectClient" DROP CONSTRAINT "ProjectClient_modifiedById_fkey";

-- DropForeignKey
ALTER TABLE "public"."RoleMenu" DROP CONSTRAINT "RoleMenu_menuItemId_fkey";

-- DropForeignKey
ALTER TABLE "public"."RoleMenu" DROP CONSTRAINT "RoleMenu_roleId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Timesheets" DROP CONSTRAINT "Timesheets_empid_fkey";

-- DropForeignKey
ALTER TABLE "public"."Timesheets" DROP CONSTRAINT "Timesheets_projectId_fkey";

-- DropForeignKey
ALTER TABLE "public"."User" DROP CONSTRAINT "User_branchId_fkey";

-- DropForeignKey
ALTER TABLE "public"."User" DROP CONSTRAINT "User_confirmedById_fkey";

-- DropForeignKey
ALTER TABLE "public"."User" DROP CONSTRAINT "User_createdById_fkey";

-- DropForeignKey
ALTER TABLE "public"."User" DROP CONSTRAINT "User_currentAddressId_fkey";

-- DropForeignKey
ALTER TABLE "public"."User" DROP CONSTRAINT "User_departmentId_fkey";

-- DropForeignKey
ALTER TABLE "public"."User" DROP CONSTRAINT "User_modifiedById_fkey";

-- DropForeignKey
ALTER TABLE "public"."User" DROP CONSTRAINT "User_nomineeId_fkey";

-- DropForeignKey
ALTER TABLE "public"."User" DROP CONSTRAINT "User_payrollID_fkey";

-- DropForeignKey
ALTER TABLE "public"."User" DROP CONSTRAINT "User_permanentAddressId_fkey";

-- DropForeignKey
ALTER TABLE "public"."User" DROP CONSTRAINT "User_roleId_fkey";

-- DropForeignKey
ALTER TABLE "public"."User" DROP CONSTRAINT "User_supervisorId_fkey";

-- DropForeignKey
ALTER TABLE "public"."UserSkils" DROP CONSTRAINT "UserSkils_userId_fkey";

-- DropForeignKey
ALTER TABLE "public"."_ProjectToUser" DROP CONSTRAINT "_ProjectToUser_A_fkey";

-- DropForeignKey
ALTER TABLE "public"."_ProjectToUser" DROP CONSTRAINT "_ProjectToUser_B_fkey";

-- DropForeignKey
ALTER TABLE "public"."allowanceType" DROP CONSTRAINT "allowanceType_createdbyId_fkey";

-- DropForeignKey
ALTER TABLE "public"."deductionType" DROP CONSTRAINT "deductionType_createdbyId_fkey";

-- DropForeignKey
ALTER TABLE "public"."expenceList" DROP CONSTRAINT "expenceList_expenseid_fkey";

-- DropForeignKey
ALTER TABLE "public"."leaveAssignUser" DROP CONSTRAINT "leaveAssignUser_assignUser_userId_fkey";

-- DropForeignKey
ALTER TABLE "public"."leaveAssignUser" DROP CONSTRAINT "leaveAssignUser_createdBy_userId_fkey";

-- DropForeignKey
ALTER TABLE "public"."leaveAssignUser" DROP CONSTRAINT "leaveAssignUser_updatedBy_userid_fkey";

-- DropForeignKey
ALTER TABLE "public"."leaveCount" DROP CONSTRAINT "leaveCount_leavemasterId_fkey";

-- DropForeignKey
ALTER TABLE "public"."leaveMaintain" DROP CONSTRAINT "leaveMaintain_leaveAssignUserId_fkey";

-- DropForeignKey
ALTER TABLE "public"."leaveType" DROP CONSTRAINT "leaveType_createdById_fkey";

-- DropForeignKey
ALTER TABLE "public"."leavelog" DROP CONSTRAINT "leavelog_appliedByuserId_fkey";

-- DropForeignKey
ALTER TABLE "public"."leavelog" DROP CONSTRAINT "leavelog_updatedByuserId_fkey";

-- DropForeignKey
ALTER TABLE "public"."leavemaster" DROP CONSTRAINT "leavemaster_createdById_fkey";

-- DropForeignKey
ALTER TABLE "public"."salarylogs" DROP CONSTRAINT "salarylogs_salaryInitiatedById_fkey";

-- AlterTable
ALTER TABLE "public"."Address" DROP CONSTRAINT "Address_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Address_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Address_id_seq";

-- AlterTable
ALTER TABLE "public"."Allowance" DROP CONSTRAINT "Allowance_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
DROP COLUMN "name",
ADD COLUMN     "name" TEXT NOT NULL,
ALTER COLUMN "payrollDetailId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Allowance_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Allowance_id_seq";

-- AlterTable
ALTER TABLE "public"."Certificate" DROP CONSTRAINT "Certificate_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "userId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Certificate_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Certificate_id_seq";

-- AlterTable
ALTER TABLE "public"."Deduction" DROP CONSTRAINT "Deduction_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
DROP COLUMN "name",
ADD COLUMN     "name" TEXT NOT NULL,
ALTER COLUMN "payrollDetailId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Deduction_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Deduction_id_seq";

-- AlterTable
ALTER TABLE "public"."Department" DROP CONSTRAINT "Department_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "createdByid" SET DATA TYPE TEXT,
ADD CONSTRAINT "Department_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Department_id_seq";

-- AlterTable
ALTER TABLE "public"."Education" DROP CONSTRAINT "Education_pkey",
DROP COLUMN "userId",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Education_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Education_id_seq";

-- AlterTable
ALTER TABLE "public"."Expenselog" DROP CONSTRAINT "Expenselog_pkey",
ADD COLUMN     "projectId" TEXT NOT NULL,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "appliedById" SET DATA TYPE TEXT,
ALTER COLUMN "updatedById" SET DATA TYPE TEXT,
ADD CONSTRAINT "Expenselog_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Expenselog_id_seq";

-- AlterTable
ALTER TABLE "public"."Language" DROP CONSTRAINT "Language_pkey",
DROP COLUMN "userId",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Language_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Language_id_seq";

-- AlterTable
ALTER TABLE "public"."MenuItem" DROP CONSTRAINT "MenuItem_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "parentId" SET DATA TYPE TEXT,
ADD CONSTRAINT "MenuItem_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "MenuItem_id_seq";

-- AlterTable
ALTER TABLE "public"."Nominee" DROP CONSTRAINT "Nominee_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Nominee_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Nominee_id_seq";

-- AlterTable
ALTER TABLE "public"."OffcBranch" DROP CONSTRAINT "OffcBranch_pkey",
DROP COLUMN "addressId",
ADD COLUMN     "address" TEXT NOT NULL,
ADD COLUMN     "createdbyId" TEXT NOT NULL,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "OffcBranch_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "OffcBranch_id_seq";

-- AlterTable
ALTER TABLE "public"."Payrolldetail" DROP CONSTRAINT "Payrolldetail_pkey",
ADD COLUMN     "payrollUserId" TEXT NOT NULL,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "createdById" SET DATA TYPE TEXT,
ALTER COLUMN "updatedById" SET DATA TYPE TEXT,
ADD CONSTRAINT "Payrolldetail_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Payrolldetail_id_seq";

-- AlterTable
ALTER TABLE "public"."Payslip" DROP CONSTRAINT "Payslip_pkey",
ADD COLUMN     "createdById" TEXT NOT NULL,
ADD COLUMN     "issuedDate" TIMESTAMP(3) NOT NULL,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "employeeId" SET DATA TYPE TEXT,
ALTER COLUMN "payrollId" SET DATA TYPE TEXT,
ALTER COLUMN "salarylogsId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Payslip_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Payslip_id_seq";

-- AlterTable
ALTER TABLE "public"."Project" DROP CONSTRAINT "Project_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "projectClientId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Project_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Project_id_seq";

-- AlterTable
ALTER TABLE "public"."ProjectClient" DROP CONSTRAINT "ProjectClient_pkey",
DROP COLUMN "addressId",
ADD COLUMN     "address" TEXT NOT NULL,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "createdById" SET DATA TYPE TEXT,
ALTER COLUMN "modifiedById" SET DATA TYPE TEXT,
ADD CONSTRAINT "ProjectClient_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "ProjectClient_id_seq";

-- AlterTable
ALTER TABLE "public"."Role" DROP CONSTRAINT "Role_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
DROP COLUMN "name",
ADD COLUMN     "name" TEXT NOT NULL,
ADD CONSTRAINT "Role_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Role_id_seq";

-- AlterTable
ALTER TABLE "public"."RoleMenu" DROP CONSTRAINT "RoleMenu_pkey",
ALTER COLUMN "roleId" SET DATA TYPE TEXT,
ALTER COLUMN "menuItemId" SET DATA TYPE TEXT,
ADD CONSTRAINT "RoleMenu_pkey" PRIMARY KEY ("roleId", "menuItemId");

-- AlterTable
ALTER TABLE "public"."Timesheets" DROP CONSTRAINT "Timesheets_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "empid" SET DATA TYPE TEXT,
ALTER COLUMN "projectId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Timesheets_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Timesheets_id_seq";

-- AlterTable
ALTER TABLE "public"."User" DROP CONSTRAINT "User_pkey",
DROP COLUMN "payrollID",
DROP COLUMN "roleId",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "supervisorId" SET DATA TYPE TEXT,
ALTER COLUMN "departmentId" SET DATA TYPE TEXT,
ALTER COLUMN "branchId" SET NOT NULL,
ALTER COLUMN "branchId" SET DATA TYPE TEXT,
ALTER COLUMN "confirmedById" SET DATA TYPE TEXT,
ALTER COLUMN "modifiedById" SET DATA TYPE TEXT,
ALTER COLUMN "createdById" SET DATA TYPE TEXT,
ALTER COLUMN "nomineeId" SET DATA TYPE TEXT,
ALTER COLUMN "permanentAddressId" SET DATA TYPE TEXT,
ALTER COLUMN "currentAddressId" SET DATA TYPE TEXT,
ADD CONSTRAINT "User_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "User_id_seq";

-- AlterTable
ALTER TABLE "public"."UserSkils" DROP CONSTRAINT "UserSkils_pkey",
DROP COLUMN "userId",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "UserSkils_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "UserSkils_id_seq";

-- AlterTable
ALTER TABLE "public"."_ProjectToUser" DROP CONSTRAINT "_ProjectToUser_AB_pkey",
ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT,
ADD CONSTRAINT "_ProjectToUser_AB_pkey" PRIMARY KEY ("A", "B");

-- AlterTable
ALTER TABLE "public"."allowanceType" DROP CONSTRAINT "allowanceType_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
DROP COLUMN "shortName",
ADD COLUMN     "shortName" TEXT NOT NULL,
ALTER COLUMN "createdbyId" SET DATA TYPE TEXT,
ADD CONSTRAINT "allowanceType_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "allowanceType_id_seq";

-- AlterTable
ALTER TABLE "public"."deductionType" DROP CONSTRAINT "deductionType_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
DROP COLUMN "shortName",
ADD COLUMN     "shortName" TEXT NOT NULL,
ALTER COLUMN "createdbyId" SET DATA TYPE TEXT,
ADD CONSTRAINT "deductionType_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "deductionType_id_seq";

-- AlterTable
ALTER TABLE "public"."expenceList" DROP CONSTRAINT "expenceList_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "expenseid" SET DATA TYPE TEXT,
ADD CONSTRAINT "expenceList_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "expenceList_id_seq";

-- AlterTable
ALTER TABLE "public"."financeyearlists" DROP CONSTRAINT "financeyearlists_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "financeyearlists_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "financeyearlists_id_seq";

-- AlterTable
ALTER TABLE "public"."leaveAssignUser" DROP CONSTRAINT "leaveAssignUser_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "createdBy_userId" SET DATA TYPE TEXT,
ALTER COLUMN "assignUser_userId" SET DATA TYPE TEXT,
ALTER COLUMN "updatedBy_userid" SET DATA TYPE TEXT,
ADD CONSTRAINT "leaveAssignUser_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "leaveAssignUser_id_seq";

-- AlterTable
ALTER TABLE "public"."leaveCount" DROP CONSTRAINT "leaveCount_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
DROP COLUMN "leavetype",
ADD COLUMN     "leavetype" TEXT NOT NULL,
ALTER COLUMN "leavemasterId" SET DATA TYPE TEXT,
ADD CONSTRAINT "leaveCount_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "leaveCount_id_seq";

-- AlterTable
ALTER TABLE "public"."leaveMaintain" DROP CONSTRAINT "leaveMaintain_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "leaveAssignUserId" SET DATA TYPE TEXT,
ADD CONSTRAINT "leaveMaintain_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "leaveMaintain_id_seq";

-- AlterTable
ALTER TABLE "public"."leaveType" DROP CONSTRAINT "leaveType_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
DROP COLUMN "shortname",
ADD COLUMN     "shortname" TEXT NOT NULL,
ALTER COLUMN "createdById" SET DATA TYPE TEXT,
ADD CONSTRAINT "leaveType_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "leaveType_id_seq";

-- AlterTable
ALTER TABLE "public"."leavelog" DROP CONSTRAINT "leavelog_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
DROP COLUMN "leavetype",
ADD COLUMN     "leavetype" TEXT NOT NULL,
ALTER COLUMN "appliedByuserId" SET DATA TYPE TEXT,
ALTER COLUMN "updatedByuserId" SET DATA TYPE TEXT,
ADD CONSTRAINT "leavelog_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "leavelog_id_seq";

-- AlterTable
ALTER TABLE "public"."leavemaster" DROP CONSTRAINT "leavemaster_pkey",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "financialYear" SET DATA TYPE TEXT,
ALTER COLUMN "createdById" SET DATA TYPE TEXT,
ADD CONSTRAINT "leavemaster_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "leavemaster_id_seq";

-- AlterTable
ALTER TABLE "public"."salarylogs" DROP CONSTRAINT "salarylogs_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "salaryInitiatedById" SET DATA TYPE TEXT,
ADD CONSTRAINT "salarylogs_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "salarylogs_id_seq";

-- DropEnum
DROP TYPE "public"."Allowances";

-- DropEnum
DROP TYPE "public"."Deductions";

-- DropEnum
DROP TYPE "public"."ERole";

-- DropEnum
DROP TYPE "public"."Leaves";

-- CreateTable
CREATE TABLE "public"."userRole" (
    "roleId" TEXT NOT NULL,
    "userId" TEXT NOT NULL,

    CONSTRAINT "userRole_pkey" PRIMARY KEY ("roleId","userId")
);

-- CreateTable
CREATE TABLE "public"."maillog" (
    "id" TEXT NOT NULL,
    "authUserId" TEXT NOT NULL,
    "mailFrom" TEXT NOT NULL,
    "mailTo" TEXT NOT NULL,
    "mailSubject" TEXT NOT NULL,
    "mailBody" TEXT NOT NULL,
    "mailResponse" JSONB NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "maillog_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."otplog" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL,
    "otpVal" TEXT NOT NULL,
    "otpCreatedAt" TIMESTAMP(3) NOT NULL,
    "email" TEXT NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "otplog_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Task" (
    "id" TEXT NOT NULL,
    "taskId" TEXT NOT NULL,
    "taskName" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "priority" "public"."TaskPriority" NOT NULL,
    "status" "public"."TaskStatus" NOT NULL,
    "modifiedById" TEXT NOT NULL,
    "createdById" TEXT NOT NULL,
    "projectId" TEXT NOT NULL,

    CONSTRAINT "Task_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."EventList" (
    "id" TEXT NOT NULL,
    "eventId" TEXT NOT NULL,
    "eventDate" TIMESTAMP(3) NOT NULL,
    "eventName" TEXT NOT NULL,
    "eventPurpose" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "createdByuserId" TEXT NOT NULL,
    "modifiedByuserId" TEXT NOT NULL,

    CONSTRAINT "EventList_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."_UserToUserSkils" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL,

    CONSTRAINT "_UserToUserSkils_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateTable
CREATE TABLE "public"."_EducationToUser" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL,

    CONSTRAINT "_EducationToUser_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateTable
CREATE TABLE "public"."_LanguageToUser" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL,

    CONSTRAINT "_LanguageToUser_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateIndex
CREATE INDEX "_UserToUserSkils_B_index" ON "public"."_UserToUserSkils"("B");

-- CreateIndex
CREATE INDEX "_EducationToUser_B_index" ON "public"."_EducationToUser"("B");

-- CreateIndex
CREATE INDEX "_LanguageToUser_B_index" ON "public"."_LanguageToUser"("B");

-- CreateIndex
CREATE UNIQUE INDEX "Expenselog_projectId_key" ON "public"."Expenselog"("projectId");

-- CreateIndex
CREATE UNIQUE INDEX "Role_name_key" ON "public"."Role"("name");

-- CreateIndex
CREATE UNIQUE INDEX "User_nomineeId_key" ON "public"."User"("nomineeId");

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_supervisorId_fkey" FOREIGN KEY ("supervisorId") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_departmentId_fkey" FOREIGN KEY ("departmentId") REFERENCES "public"."Department"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_branchId_fkey" FOREIGN KEY ("branchId") REFERENCES "public"."OffcBranch"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_confirmedById_fkey" FOREIGN KEY ("confirmedById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_modifiedById_fkey" FOREIGN KEY ("modifiedById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_nomineeId_fkey" FOREIGN KEY ("nomineeId") REFERENCES "public"."Nominee"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_permanentAddressId_fkey" FOREIGN KEY ("permanentAddressId") REFERENCES "public"."Address"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_currentAddressId_fkey" FOREIGN KEY ("currentAddressId") REFERENCES "public"."Address"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."userRole" ADD CONSTRAINT "userRole_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES "public"."Role"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."userRole" ADD CONSTRAINT "userRole_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."maillog" ADD CONSTRAINT "maillog_authUserId_fkey" FOREIGN KEY ("authUserId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."salarylogs" ADD CONSTRAINT "salarylogs_salaryInitiatedById_fkey" FOREIGN KEY ("salaryInitiatedById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Project" ADD CONSTRAINT "Project_projectClientId_fkey" FOREIGN KEY ("projectClientId") REFERENCES "public"."ProjectClient"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Timesheets" ADD CONSTRAINT "Timesheets_empid_fkey" FOREIGN KEY ("empid") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Timesheets" ADD CONSTRAINT "Timesheets_projectId_fkey" FOREIGN KEY ("projectId") REFERENCES "public"."Project"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Task" ADD CONSTRAINT "Task_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Task" ADD CONSTRAINT "Task_modifiedById_fkey" FOREIGN KEY ("modifiedById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Task" ADD CONSTRAINT "Task_projectId_fkey" FOREIGN KEY ("projectId") REFERENCES "public"."Project"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Expenselog" ADD CONSTRAINT "Expenselog_appliedById_fkey" FOREIGN KEY ("appliedById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Expenselog" ADD CONSTRAINT "Expenselog_projectId_fkey" FOREIGN KEY ("projectId") REFERENCES "public"."Project"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Expenselog" ADD CONSTRAINT "Expenselog_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."expenceList" ADD CONSTRAINT "expenceList_expenseid_fkey" FOREIGN KEY ("expenseid") REFERENCES "public"."Expenselog"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."leaveType" ADD CONSTRAINT "leaveType_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."ProjectClient" ADD CONSTRAINT "ProjectClient_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."ProjectClient" ADD CONSTRAINT "ProjectClient_modifiedById_fkey" FOREIGN KEY ("modifiedById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Payrolldetail" ADD CONSTRAINT "Payrolldetail_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Payrolldetail" ADD CONSTRAINT "Payrolldetail_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Payrolldetail" ADD CONSTRAINT "Payrolldetail_payrollUserId_fkey" FOREIGN KEY ("payrollUserId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Payslip" ADD CONSTRAINT "Payslip_employeeId_fkey" FOREIGN KEY ("employeeId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Payslip" ADD CONSTRAINT "Payslip_payrollId_fkey" FOREIGN KEY ("payrollId") REFERENCES "public"."Payrolldetail"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Payslip" ADD CONSTRAINT "Payslip_salarylogsId_fkey" FOREIGN KEY ("salarylogsId") REFERENCES "public"."salarylogs"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Payslip" ADD CONSTRAINT "Payslip_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Allowance" ADD CONSTRAINT "Allowance_payrollDetailId_fkey" FOREIGN KEY ("payrollDetailId") REFERENCES "public"."Payrolldetail"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Deduction" ADD CONSTRAINT "Deduction_payrollDetailId_fkey" FOREIGN KEY ("payrollDetailId") REFERENCES "public"."Payrolldetail"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Department" ADD CONSTRAINT "Department_createdByid_fkey" FOREIGN KEY ("createdByid") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."OffcBranch" ADD CONSTRAINT "OffcBranch_createdbyId_fkey" FOREIGN KEY ("createdbyId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Certificate" ADD CONSTRAINT "Certificate_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

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
ALTER TABLE "public"."EventList" ADD CONSTRAINT "EventList_createdByuserId_fkey" FOREIGN KEY ("createdByuserId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."EventList" ADD CONSTRAINT "EventList_modifiedByuserId_fkey" FOREIGN KEY ("modifiedByuserId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."_UserToUserSkils" ADD CONSTRAINT "_UserToUserSkils_A_fkey" FOREIGN KEY ("A") REFERENCES "public"."User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."_UserToUserSkils" ADD CONSTRAINT "_UserToUserSkils_B_fkey" FOREIGN KEY ("B") REFERENCES "public"."UserSkils"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."_ProjectToUser" ADD CONSTRAINT "_ProjectToUser_A_fkey" FOREIGN KEY ("A") REFERENCES "public"."Project"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."_ProjectToUser" ADD CONSTRAINT "_ProjectToUser_B_fkey" FOREIGN KEY ("B") REFERENCES "public"."User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."_EducationToUser" ADD CONSTRAINT "_EducationToUser_A_fkey" FOREIGN KEY ("A") REFERENCES "public"."Education"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."_EducationToUser" ADD CONSTRAINT "_EducationToUser_B_fkey" FOREIGN KEY ("B") REFERENCES "public"."User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."_LanguageToUser" ADD CONSTRAINT "_LanguageToUser_A_fkey" FOREIGN KEY ("A") REFERENCES "public"."Language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."_LanguageToUser" ADD CONSTRAINT "_LanguageToUser_B_fkey" FOREIGN KEY ("B") REFERENCES "public"."User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
