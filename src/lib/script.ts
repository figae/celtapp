import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()

async function main() {
    const character = await prisma.character.create({ data: { name: 'Dana' } })
    console.log(character)
}

main()
    .catch(e => {
        console.error(e.message)
    })
    .finally(async () => {
        await prisma.$disconnect()
    })
