import  { MongoClient } from "mongodb";
import { PrismaClient } from "../generated/prisma/client.js";


const mongoUri = "mongodb://192.168.0.104:27017/";


export const prisma = new PrismaClient();
export const mongoClient = new MongoClient(mongoUri);