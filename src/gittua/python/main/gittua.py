from typing import Callable

# @author { @Override } | 1/9/2025 : 0133
# @20:57 Current edit - I've added static typing.


def getUsr() -> str:
    name: str = str(input("Enter your Github Profile: "))
    return name


github: str = getUsr()


def gitTua(f: Callable[[str], str], a: str) -> str:
    return f(a)


def gitBlank(str: str) -> str:
    return "git {}".format(str)


def branch():
    return 0


def commandBox():
    print("┌─────────── Enter Command ───────────┐")
    usrInput: str = str(input("| "))


git = lambda x: gitTua(gitBlank, x)

commands = {
    "cl": git("clone"),
    "b": git("branch"),
    "f": git("fetch"),
    "p": git("pull"),
    "a": git("add"),
    "fa": git("add ."),
    "help": git("-help"),
}



print("Testing:\n")

print(commands["b"])
print(commands["f"])
print(commands["p"])
print(commands["a"])
print(commands["fa"])
print(commands["help"])
print(commands["cl"])
commandBox()
