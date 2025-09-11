/*
  Warnings:

  - You are about to drop the column `currentAddressId` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `nomineeId` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `permanentAddressId` on the `User` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[userid]` on the table `Address` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[userId]` on the table `Nominee` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `type` to the `Address` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userid` to the `Address` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Nominee` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "public"."AddressType" AS ENUM ('CURRENT', 'PERMANENT');

-- DropForeignKey
ALTER TABLE "public"."User" DROP CONSTRAINT "User_currentAddressId_fkey";

-- DropForeignKey
ALTER TABLE "public"."User" DROP CONSTRAINT "User_nomineeId_fkey";

-- DropForeignKey
ALTER TABLE "public"."User" DROP CONSTRAINT "User_permanentAddressId_fkey";

-- DropIndex
DROP INDEX "public"."User_nomineeId_key";

-- AlterTable
ALTER TABLE "public"."Address" ADD COLUMN     "type" "public"."AddressType" NOT NULL,
ADD COLUMN     "userid" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "public"."Nominee" ADD COLUMN     "userId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "public"."User" DROP COLUMN "currentAddressId",
DROP COLUMN "nomineeId",
DROP COLUMN "permanentAddressId";

-- AlterTable
ALTER TABLE "public"."otplog" ADD COLUMN     "active" BOOLEAN NOT NULL DEFAULT false;

-- CreateIndex
CREATE UNIQUE INDEX "Address_userid_key" ON "public"."Address"("userid");

-- CreateIndex
CREATE UNIQUE INDEX "Nominee_userId_key" ON "public"."Nominee"("userId");

-- AddForeignKey
ALTER TABLE "public"."Nominee" ADD CONSTRAINT "Nominee_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."Address" ADD CONSTRAINT "Address_userid_fkey" FOREIGN KEY ("userid") REFERENCES "public"."User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
