if (Get-Command "wget" -ErrorAction SilentlyContinue) {
    wget -q -O uvr5_weights/2_HP-UVR.pth 2_HP-UVR.pth https://huggingface.co/fastrolling/uvr/resolve/main/Main_Models/2_HP-UVR.pth 
fi
} elseif (Get-Command "./wget.exe" -ErrorAction SilentlyContinue) {
    ./wget.exe -q -O uvr5_weights/2_HP-UVR.pth 2_HP-UVR.pth https://huggingface.co/fastrolling/uvr/resolve/main/Main_Models/2_HP-UVR.pth 
fi
} else {
    Invoke-WebRequest -Uri "https://eternallybored.org/misc/wget/1.21.4/64/wget.exe" -OutFile "./wget.exe"
    ./wget.exe -q -O uvr5_weights/2_HP-UVR.pth 2_HP-UVR.pth https://huggingface.co/fastrolling/uvr/resolve/main/Main_Models/2_HP-UVR.pth 
fi
}
