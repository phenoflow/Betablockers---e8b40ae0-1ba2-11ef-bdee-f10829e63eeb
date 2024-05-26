# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2024.

import sys, csv, re

codes = [{"code":"29427","system":"gprdproduct"},{"code":"34741","system":"gprdproduct"},{"code":"34449","system":"gprdproduct"},{"code":"51528","system":"gprdproduct"},{"code":"50403","system":"gprdproduct"},{"code":"2629","system":"gprdproduct"},{"code":"817","system":"gprdproduct"},{"code":"43251","system":"gprdproduct"},{"code":"53885","system":"gprdproduct"},{"code":"9783","system":"gprdproduct"},{"code":"14058","system":"gprdproduct"},{"code":"599","system":"gprdproduct"},{"code":"8061","system":"gprdproduct"},{"code":"49142","system":"gprdproduct"},{"code":"57626","system":"gprdproduct"},{"code":"34825","system":"gprdproduct"},{"code":"58511","system":"gprdproduct"},{"code":"58109","system":"gprdproduct"},{"code":"46935","system":"gprdproduct"},{"code":"47536","system":"gprdproduct"},{"code":"46936","system":"gprdproduct"},{"code":"1288","system":"gprdproduct"},{"code":"51447","system":"gprdproduct"},{"code":"8189","system":"gprdproduct"},{"code":"59495","system":"gprdproduct"},{"code":"34034","system":"gprdproduct"},{"code":"32094","system":"gprdproduct"},{"code":"33374","system":"gprdproduct"},{"code":"34501","system":"gprdproduct"},{"code":"7066","system":"gprdproduct"},{"code":"31708","system":"gprdproduct"},{"code":"54479","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('betablockers-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["betablockers-p1-3125mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["betablockers-p1-3125mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["betablockers-p1-3125mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
