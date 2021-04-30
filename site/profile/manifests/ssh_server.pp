class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDXFWICwhl4K62pxED38q33XJlzIWsG/TYQskLyIfzMxDpmsLiDozeekZ3Qkuydt6KB7qJ/zk1oBbOAYnfHDD7WkGmoqzRUT01ZwGw9fVBxkWkIFCyFdbN8nDivrcaBbJPmersbBubE736o83+F/Io7+A5PTmvnmr1tcUtAdvIPAFFH6J5Eei7dpuhQ9LWXXhs4v4bkSXFyjYhRDM5NfK6QFI0jMCTlyoLPukrGotI4lA+qMrL7yJeY5DtxeJspqCsmZVSOYjDRJJCKwdFH8hXNO0If1x7L6dKpZl8nsNXgUsBJllzvrH9dW/OpJCjLPzdDzvczgKi2easkSt9NL+N9',
  }  
}
