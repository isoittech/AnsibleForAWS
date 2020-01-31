#! /bin/bash -ex

########################################
########################################
#
# ■処理内容
# Vagrant ホストOSとVM間の共有フォルダから、プロビジョン作業用フォルダに全コピーする。
# さらに、必要な処理（権限設定など）を行う。
#
# ■背景・目的
# Vagrantの共有フォルダ配下でPlaybookを実行した場合、共有フォルダおよびその配下のPermissionが弱い
#（かつ、chmodが効かない）ために起こる不具合を回避するため。
#
########################################
########################################

rm -rf /home/vagrant/ansible
mkdir -p /home/vagrant/ansible

cp -r /vagrant/base/* /home/vagrant/ansible/
chmod +x /home/vagrant/ansible/hosts/dev/ec2.py
