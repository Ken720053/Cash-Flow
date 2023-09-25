import { knex } from "Knex";

export const createDatabase = () => {
    return knex({
        client: "mysql",
        connection: {
            host: process.env.DATABASE_HOST || "127.0.0.1",
            port: Number(process.env.DATABASE_PORT) || 3306,
            user:process.env.DATABASE_USER || "root",
            password:process.env.DATABASE_PASSWORD || "xumei_example",
            database:process.env.DATABASE_DATABASE || "xue-mi",
        },
        pool: {min:2, max:5},
    });
};

export const isJson = (value:string) => {
    try{
        return Boolean(JSON.parse(value));
    }catch(e){
        return false;
    }
};
