import React from 'react';

import { Asset } from "./Asset";
import type { AssetType } from "./Asset";
import './Asset.css';

type AssetsProp = {
  assets: Array<AssetType>
};

export const Assets = (data: AssetsProp) => {
  // console.log("Assets data", data)
  return (
    <div className="assets">
      {data?.assets?.map((d: AssetType) => <Asset data={d} />)}
    </div>
  );
}
