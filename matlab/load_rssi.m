function rssi = load_rssi(file_name)
    csi_trace = read_bf_file(file_name);
    len = length(csi_trace);
    rssi = zeros(len,3);
    for m = 1:len
        csi_entry = csi_trace{m};
        rssi(m, 1) = csi_entry.rssi_a;
        rssi(m, 2) = csi_entry.rssi_b;
        rssi(m, 3) = csi_entry.rssi_c;        
    end
end