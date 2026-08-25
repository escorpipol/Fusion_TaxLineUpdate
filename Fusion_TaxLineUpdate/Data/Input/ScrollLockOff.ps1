Add-Type -MemberDefinition @'
[DllImport("user32.dll")] 
public static extern short GetKeyState(int nVirtKey);
'@ -Name keyboardfuncs -Namespace user32

# 0x91 = 145, the virtual key code for the Scroll Lock key 
# see http://www.foreui.com/articles/Key_Code_Table.htm
if([user32.keyboardfuncs]::GetKeyState(0x91) -eq 0){
    # Scroll Lock is off
}
else {
    # Scroll Lock is on
}