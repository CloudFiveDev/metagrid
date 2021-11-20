FROM mono:latest

ENV META_HOME /meta
RUN mkdir ${META_HOME}
WORKDIR ${META_HOME}
COPY ./bin ${META_HOME}

COPY configs/Regions.ini ${META_HOME}/Regions/Regions.ini
COPY configs/OpenSim.ini ${META_HOME}/OpenSim.ini
COPY configs/StandaloneCommon.ini ${META_HOME}/config-include/StandaloneCommon.ini
COPY configs/GridCommon.ini ${META_HOME}/config-include/GridCommon.ini

# EXPOSE 9000
# CMD [ "mono",  "./OpenSim.exe" ]