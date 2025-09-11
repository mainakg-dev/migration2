/*
  Warnings:

  - You are about to drop the `EventList` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "public"."EventList" DROP CONSTRAINT "EventList_createdByuserId_fkey";

-- DropForeignKey
ALTER TABLE "public"."EventList" DROP CONSTRAINT "EventList_modifiedByuserId_fkey";

-- DropTable
DROP TABLE "public"."EventList";
