function outData = UpdateSourceFile(inData)
    % Internal function to update Simscape component files of
    % acoustical_lib to acoustic_lib
    
    % Copyright 2024-2025 The MathWorks, Inc.

    % Ensure that acoustic_lib is loaded so can get reference block data
    load_system('acoustic_lib');

    % Get linked block instance data and forwarding entry for which
    % function is called
    instanceData = inData.InstanceData;
    forwardingTableEntry = inData.ForwardingTableEntry;
    
    % Get new block path
    newName = forwardingTableEntry.('__slNewName__');
    ReferenceBlock = newName;

    % Get list of name value pair and block names
    [ParamNames{1:length(instanceData)}] = instanceData.Name;
    
    for i = 1:length(instanceData)
        if strcmp(instanceData(i).Name, 'SourceFile')
            instanceData(i).Value = get_param(ReferenceBlock,'SourceFile');
        elseif strcmp(instanceData(i).Name, 'ComponentPath')
            instanceData(i).Value = get_param(ReferenceBlock,'ComponentPath');
        elseif strcmp(instanceData(i).Name, 'ComponentVariants')
            instanceData(i).Value = get_param(ReferenceBlock,'ComponentVariants');
        elseif strcmp(instanceData(i).Name, 'ComponentVariantNames')
            instanceData(i).Value = get_param(ReferenceBlock,'ComponentVariants');
        end
    end

    % Return new instance data
    outData.NewInstanceData = instanceData;
    outData.NewBlockPath = newName;
end
