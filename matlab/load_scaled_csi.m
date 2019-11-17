function csi = load_csi(file_name)
    csi_trace = read_bf_file(file_name);
    len = length(csi_trace);
    csi = zeros(len,3, 30);
    for m = 1:len
        csi_temp = csi_trace{m};
        csi_entry = get_scaled_csi_sm(csi_temp);
        csi(m, :, :) = squeeze(csi_entry);
    end
end