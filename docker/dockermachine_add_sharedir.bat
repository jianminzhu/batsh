
c:
cd C:\soft\DockerToolbox\

docker-machine stop default 
call C:\soft\VirtualBox\VBoxManage.exe sharedfolder add default --name d/HyCloud --hostpath "D:\zhannei" --automount
docker-machine start default 

@rem ��VirtualBox��������鿴��־�����Կ���������Ϣ��
@rem 00:00:01.797856 SharedFolders host service: Adding host mapping 00:00:01.797863 Host path 'D:\HyCloud', map name 'd/HyCloud', writable, automount=true, create_symlinks=false, missing=false
@rem ˵��Ŀ¼�ѹ���
@rem  
docker-machine ssh default 'sudo mkdir -p /d/HyCloud && sudo mount -t vboxsf /d/HyCloud /d/HyCloud'
 