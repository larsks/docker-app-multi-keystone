FROM centos:7

RUN yum -y install centos-release-openstack-newton; \
	yum -y update; \
	yum -y install ansible iproute git; \
	yum clean all

ONBUILD COPY deploy /deploy
ONBUILD RUN /deploy/build
ENTRYPOINT ["/deploy/entrypoint"]

ENV ANSIBLE_FORCE_COLOR=true
