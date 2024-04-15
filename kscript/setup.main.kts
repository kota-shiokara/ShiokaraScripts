#!/usr/bin/env kotlin
import java.io.File

val templateFile = File("./template.main.kts")

fun main(args: Array<String>) {
    if (args.size != 1) {
        println("Usage: ./setup.main.kts <file-name>")
        return
    }

    try {
        val newFileName = "${args[0]}.main.kts"
        val newFile = File(newFileName)
        if (newFile.exists()) {
            println("File already exists: ${newFile.absolutePath}")
            return
        }

        templateFile.copyTo(newFile)
        newFile.setExecutable(true)

        println("File created: ${newFile.absolutePath}")
    } catch (e: Exception) {
        e.printStackTrace()
        return
    }
}

main(args)