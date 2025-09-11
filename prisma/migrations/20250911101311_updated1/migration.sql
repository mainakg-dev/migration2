-- DropForeignKey
ALTER TABLE "public"."Payrolldetail" DROP CONSTRAINT "Payrolldetail_payrollUserId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Project" DROP CONSTRAINT "Project_departmentId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Task" DROP CONSTRAINT "Task_projectId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Timesheets" DROP CONSTRAINT "Timesheets_projectId_fkey";

-- DropForeignKey
ALTER TABLE "public"."leavelog" DROP CONSTRAINT "leavelog_appliedByuserId_fkey";

-- DropForeignKey
ALTER TABLE "public"."leavelog" DROP CONSTRAINT "leavelog_updatedByuserId_fkey";

-- AlterTable
ALTER TABLE "public"."Payrolldetail" ALTER COLUMN "payrollUserId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."Project" ALTER COLUMN "departmentId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."Task" ALTER COLUMN "projectId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."Timesheets" ALTER COLUMN "projectId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."leavelog" ALTER COLUMN "appliedByuserId" DROP NOT NULL,
ALTER COLUMN "updatedByuserId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "public"."Project" ADD CONSTRAINT "Project_departmentId_fkey" FOREIGN KEY ("departmentId") REFERENCES "public"."Department"("dptId") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Timesheets" ADD CONSTRAINT "Timesheets_projectId_fkey" FOREIGN KEY ("projectId") REFERENCES "public"."Project"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Task" ADD CONSTRAINT "Task_projectId_fkey" FOREIGN KEY ("projectId") REFERENCES "public"."Project"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Payrolldetail" ADD CONSTRAINT "Payrolldetail_payrollUserId_fkey" FOREIGN KEY ("payrollUserId") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."leavelog" ADD CONSTRAINT "leavelog_appliedByuserId_fkey" FOREIGN KEY ("appliedByuserId") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."leavelog" ADD CONSTRAINT "leavelog_updatedByuserId_fkey" FOREIGN KEY ("updatedByuserId") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
