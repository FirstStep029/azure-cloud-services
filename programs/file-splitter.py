import os
import pandas as pd

if __name__ == "__main__":

    df = pd.read_csv("D:\GitHub\\azure-cloud-services\datasets\\archive\Electric_Vehicle_Population_Data.csv", header='infer')
    i = 0
    incr = 10000
    while i < (len(df)-1):
        # df.iloc[i:i+incr, :].to_csv(f"xxxxx\datasets\electric-vehicle-population\\file-level\part-{i}_{i+incr}.csv", index=False, header=True)
        out_dir = f"xxxxx\datasets\electric-vehicle-population\\part-{i}_{i+incr}"
        if not os.path.exists(out_dir):
            os.mkdir(out_dir)
        df.iloc[i:i+incr, :].to_csv(f"{out_dir}\dataset.csv", index=False, header=True)
        i += incr