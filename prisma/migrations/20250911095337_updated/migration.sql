/*
  Warnings:

  - Added the required column `country` to the `OffcBranch` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "public"."OffcBranch" ADD COLUMN     "country" TEXT NOT NULL,
ALTER COLUMN "remarks" DROP NOT NULL;
