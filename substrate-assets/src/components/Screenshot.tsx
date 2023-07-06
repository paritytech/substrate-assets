import React from 'react';
import './Screenshot.css';
import CopyToClipboard from 'react-copy-to-clipboard';

const BASE_URL = "https://raw.githubusercontent.com/paritytech/substrate-assets/master/";

type ScreenshotProp = {
  image: string;
  dir: string;
};

export const Screenshot = (data: ScreenshotProp) => {
  const url = `${BASE_URL}/${data.dir}/${data.image}`;

  const onClick = React.useCallback(({ target: { innerText } }: any) => {
  }, [])

  const onCopy = React.useCallback((value: any) => {
    console.log(`URL copied to clipboard: ${value}} `);
  }, [])


  return (
    <div className="screenshot">
      <CopyToClipboard text={url} onCopy={onCopy}>
        <img src={url} alt="" />
      </CopyToClipboard>

    </div>
  )
}
