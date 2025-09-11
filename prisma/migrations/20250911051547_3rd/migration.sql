/*
  Warnings:

  - You are about to drop the column `userId` on the `Certificate` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "public"."Certificate" DROP CONSTRAINT "Certificate_userId_fkey";

-- AlterTable
ALTER TABLE "public"."Certificate" DROP COLUMN "userId";

-- CreateTable
CREATE TABLE "public"."_CertificateToUser" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL,

    CONSTRAINT "_CertificateToUser_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateIndex
CREATE INDEX "_CertificateToUser_B_index" ON "public"."_CertificateToUser"("B");

-- AddForeignKey
ALTER TABLE "public"."_CertificateToUser" ADD CONSTRAINT "_CertificateToUser_A_fkey" FOREIGN KEY ("A") REFERENCES "public"."Certificate"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."_CertificateToUser" ADD CONSTRAINT "_CertificateToUser_B_fkey" FOREIGN KEY ("B") REFERENCES "public"."User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
