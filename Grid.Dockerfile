FROM mono:latest

ENV META_HOME /meta
RUN mkdir ${META_HOME}
WORKDIR ${META_HOME}
COPY ./bin ${META_HOME}

COPY configs/OpenSim.ini ${META_HOME}/OpenSim.ini
COPY configs/GridCommon.ini ${META_HOME}/config-include/GridCommon.ini

# EXPOSE 8002
# CMD [ "mono",  "./OpenSim.exe" ]