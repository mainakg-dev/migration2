/*
  Warnings:

  - You are about to drop the `_ProjectToUser` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "public"."_ProjectToUser" DROP CONSTRAINT "_ProjectToUser_A_fkey";

-- DropForeignKey
ALTER TABLE "public"."_ProjectToUser" DROP CONSTRAINT "_ProjectToUser_B_fkey";

-- AlterTable
ALTER TABLE "public"."Certificate" ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."Department" ADD COLUMN     "modifiedById" TEXT,
ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."Education" ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."Expenselog" ALTER COLUMN "remarks" DROP NOT NULL,
ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."Language" ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."Project" ADD COLUMN     "createdById" TEXT,
ADD COLUMN     "description" TEXT,
ADD COLUMN     "modifiedById" TEXT,
ADD COLUMN     "projectLeadId" TEXT;

-- AlterTable
ALTER TABLE "public"."ProjectClient" ALTER COLUMN "description" DROP NOT NULL,
ALTER COLUMN "address" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."Task" ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."Timesheets" ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."UserSkils" ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."allowanceType" ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."deductionType" ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."leaveAssignUser" ALTER COLUMN "updatedOn" DROP NOT NULL,
ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."leaveType" ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."leavelog" ALTER COLUMN "updatedOn" DROP NOT NULL,
ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."leavemaster" ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."maillog" ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."otplog" ALTER COLUMN "description" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."salarylogs" ADD COLUMN     "financialYear" TEXT;

-- DropTable
DROP TABLE "public"."_ProjectToUser";

-- CreateTable
CREATE TABLE "public"."_assignedProjects" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL,

    CONSTRAINT "_assignedProjects_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateIndex
CREATE INDEX "_assignedProjects_B_index" ON "public"."_assignedProjects"("B");

-- AddForeignKey
ALTER TABLE "public"."Project" ADD CONSTRAINT "Project_projectLeadId_fkey" FOREIGN KEY ("projectLeadId") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Project" ADD CONSTRAINT "Project_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Project" ADD CONSTRAINT "Project_modifiedById_fkey" FOREIGN KEY ("modifiedById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Department" ADD CONSTRAINT "Department_modifiedById_fkey" FOREIGN KEY ("modifiedById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."_assignedProjects" ADD CONSTRAINT "_assignedProjects_A_fkey" FOREIGN KEY ("A") REFERENCES "public"."Project"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."_assignedProjects" ADD CONSTRAINT "_assignedProjects_B_fkey" FOREIGN KEY ("B") REFERENCES "public"."User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
