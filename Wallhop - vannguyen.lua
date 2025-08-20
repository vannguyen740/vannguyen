; Auto spam spacebar for wall hop
$Space::
Loop
{
    if not GetKeyState("Space", "P")
        break
    Send, {Space}
    Sleep, 50
}
Return