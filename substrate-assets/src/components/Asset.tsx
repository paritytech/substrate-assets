import React from 'react';
import './Asset.css';
import { Icon } from './Icon';
import { Screenshot } from './Screenshot';

export type AssetType = {
  name: string;
  description: string;
  icons: Array<string>;
  screenshots: Array<string>;
  dir: string;
};

type AssetProp = {
  data: AssetType
};

export const Asset = (data: AssetProp) => {
  const asset = data.data;

  return (
    <div className="asset">
      <div className="name">{asset.name}</div>
      <div className="description">{asset.description}</div>
      <div className="icons">
        {asset.icons?.map((image: string) => <Icon dir={asset.dir} image={image} />)}
      </div>
      <div className="screenshots">
        {asset.screenshots?.map((image: string) => <Screenshot dir={asset.dir} image={image} />)}
      </div>
    </div>
  )
}
