----------- sticky 9/25/25 docker pipeline for annotation, cvat ----------------
https://github.com/juwangvsu/cvat.git
i9ub22:
	/media/student/datavision/tools/cvat
username: django
passwd: Tctpa1!1

student1/Vsu2025!

reverse tunnel setup:
	ssh -i ~/.ssh/id_ed25519 \
    -N -T \
    -o ExitOnForwardFailure=yes \
    -o ServerAliveInterval=30 \
    -o ServerAliveCountMax=3 \
    -R 0.0.0.0:18080:127.0.0.1:8080 \
    jackal@dex -p 80

issue: can not access via dex tunnel.
	fixed: 
	cd /path/to/cvat
	export CVAT_HOST=134.209.218.187     # or put this in .env
	docker compose down
	docker compose up -d
	now it will only accept connection via dex
		http://134.209.218.187:18080/
	how to tweak it so it also accept from localhost?

	https://chatgpt.com/share/e/68d752c8-f76c-800c-9596-2e7f6f848b9e
