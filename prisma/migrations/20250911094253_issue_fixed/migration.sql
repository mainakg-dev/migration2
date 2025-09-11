-- DropForeignKey
ALTER TABLE "public"."Department" DROP CONSTRAINT "Department_createdByid_fkey";

-- DropForeignKey
ALTER TABLE "public"."Expenselog" DROP CONSTRAINT "Expenselog_appliedById_fkey";

-- DropForeignKey
ALTER TABLE "public"."Expenselog" DROP CONSTRAINT "Expenselog_updatedById_fkey";

-- DropForeignKey
ALTER TABLE "public"."OffcBranch" DROP CONSTRAINT "OffcBranch_createdbyId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Payrolldetail" DROP CONSTRAINT "Payrolldetail_createdById_fkey";

-- DropForeignKey
ALTER TABLE "public"."Payrolldetail" DROP CONSTRAINT "Payrolldetail_updatedById_fkey";

-- DropForeignKey
ALTER TABLE "public"."Payslip" DROP CONSTRAINT "Payslip_createdById_fkey";

-- DropForeignKey
ALTER TABLE "public"."ProjectClient" DROP CONSTRAINT "ProjectClient_createdById_fkey";

-- DropForeignKey
ALTER TABLE "public"."ProjectClient" DROP CONSTRAINT "ProjectClient_modifiedById_fkey";

-- DropForeignKey
ALTER TABLE "public"."Task" DROP CONSTRAINT "Task_createdById_fkey";

-- DropForeignKey
ALTER TABLE "public"."Task" DROP CONSTRAINT "Task_modifiedById_fkey";

-- DropForeignKey
ALTER TABLE "public"."allowanceType" DROP CONSTRAINT "allowanceType_createdbyId_fkey";

-- DropForeignKey
ALTER TABLE "public"."deductionType" DROP CONSTRAINT "deductionType_createdbyId_fkey";

-- DropForeignKey
ALTER TABLE "public"."leaveType" DROP CONSTRAINT "leaveType_createdById_fkey";

-- DropForeignKey
ALTER TABLE "public"."leavemaster" DROP CONSTRAINT "leavemaster_createdById_fkey";

-- DropForeignKey
ALTER TABLE "public"."salarylogs" DROP CONSTRAINT "salarylogs_salaryInitiatedById_fkey";

-- AlterTable
ALTER TABLE "public"."Department" ALTER COLUMN "createdByid" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."Expenselog" ALTER COLUMN "appliedById" DROP NOT NULL,
ALTER COLUMN "updatedById" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."OffcBranch" ADD COLUMN     "modifiedbyId" TEXT,
ALTER COLUMN "createdbyId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."Payrolldetail" ALTER COLUMN "createdById" DROP NOT NULL,
ALTER COLUMN "updatedById" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."Payslip" ALTER COLUMN "createdById" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."ProjectClient" ALTER COLUMN "createdById" DROP NOT NULL,
ALTER COLUMN "modifiedById" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."Task" ALTER COLUMN "modifiedById" DROP NOT NULL,
ALTER COLUMN "createdById" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."allowanceType" ALTER COLUMN "createdbyId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."deductionType" ALTER COLUMN "createdbyId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."leaveType" ALTER COLUMN "createdById" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."leavemaster" ALTER COLUMN "createdById" DROP NOT NULL;

-- AlterTable
ALTER TABLE "public"."salarylogs" ALTER COLUMN "salaryInitiatedById" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "public"."salarylogs" ADD CONSTRAINT "salarylogs_salaryInitiatedById_fkey" FOREIGN KEY ("salaryInitiatedById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Task" ADD CONSTRAINT "Task_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Task" ADD CONSTRAINT "Task_modifiedById_fkey" FOREIGN KEY ("modifiedById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Expenselog" ADD CONSTRAINT "Expenselog_appliedById_fkey" FOREIGN KEY ("appliedById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Expenselog" ADD CONSTRAINT "Expenselog_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."leaveType" ADD CONSTRAINT "leaveType_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."ProjectClient" ADD CONSTRAINT "ProjectClient_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."ProjectClient" ADD CONSTRAINT "ProjectClient_modifiedById_fkey" FOREIGN KEY ("modifiedById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Payrolldetail" ADD CONSTRAINT "Payrolldetail_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Payrolldetail" ADD CONSTRAINT "Payrolldetail_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Payslip" ADD CONSTRAINT "Payslip_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Department" ADD CONSTRAINT "Department_createdByid_fkey" FOREIGN KEY ("createdByid") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."OffcBranch" ADD CONSTRAINT "OffcBranch_createdbyId_fkey" FOREIGN KEY ("createdbyId") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."OffcBranch" ADD CONSTRAINT "OffcBranch_modifiedbyId_fkey" FOREIGN KEY ("modifiedbyId") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."allowanceType" ADD CONSTRAINT "allowanceType_createdbyId_fkey" FOREIGN KEY ("createdbyId") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."deductionType" ADD CONSTRAINT "deductionType_createdbyId_fkey" FOREIGN KEY ("createdbyId") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."leavemaster" ADD CONSTRAINT "leavemaster_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
