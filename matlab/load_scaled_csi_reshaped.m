function csi = load_scaled_csi_reshaped(file_name)
    csi_trace = read_bf_file(file_name);
    len = length(csi_trace);
    csi = zeros(len, 90);
    for m = 1:len
        csi_entry = csi_trace{m};
        csi_temp = get_scaled_csi_sm(csi_entry); % 1*3*30
        csi_vector = reshape(squeeze(csi_temp).',1,[]); % 1*90
        csi(m, :) = csi_vector;
    end
end