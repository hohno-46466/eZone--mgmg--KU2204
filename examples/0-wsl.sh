
# (1) 実行中の WSL のバージョンを確認（Ubuntu on WSL で実行可能）

$ wsl.exe --list -v

# 出力例

  NAME                   STATE           VERSION
  * Ubuntu-18.04           Running         1		# ← WSL1 で動いている
    docker-desktop         Running         2		# ← WSL2 で動いている
    docker-desktop-data    Running         2		# ← WSL2 で動いている

# (2) WSL2 から WSL1 に変更する （Ubuntu on WSL ではなく、管理者モードの PowerShell で行うこと）


（執筆中）
