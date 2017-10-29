cloud.txt: cloud.txt.sh
	@echo "Create a cloud-init config file"
	./cloud.txt.sh > cloud.txt

cloud.img: cloud.txt
	@echo "Create a cloud-init disk image"
	./cloud-localds cloud.img cloud.txt

%.orig:
	@echo "Backup disk image"
	cp $* > $@

%-disk1.img: %-disk1.img.orig FORCE
	@echo "Starting VM ..."
	./start

FORCE:
