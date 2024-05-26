# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2024.

import sys, csv, re

codes = [{"code":"19178","system":"gprdproduct"},{"code":"53334","system":"gprdproduct"},{"code":"34821","system":"gprdproduct"},{"code":"1290","system":"gprdproduct"},{"code":"33079","system":"gprdproduct"},{"code":"46931","system":"gprdproduct"},{"code":"55298","system":"gprdproduct"},{"code":"24","system":"gprdproduct"},{"code":"33184","system":"gprdproduct"},{"code":"28700","system":"gprdproduct"},{"code":"58973","system":"gprdproduct"},{"code":"34754","system":"gprdproduct"},{"code":"31934","system":"gprdproduct"},{"code":"7852","system":"gprdproduct"},{"code":"41591","system":"gprdproduct"},{"code":"58982","system":"gprdproduct"},{"code":"33085","system":"gprdproduct"},{"code":"33839","system":"gprdproduct"},{"code":"19191","system":"gprdproduct"},{"code":"46908","system":"gprdproduct"},{"code":"57176","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('betablockers-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["betablockers-p1-100mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["betablockers-p1-100mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["betablockers-p1-100mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
