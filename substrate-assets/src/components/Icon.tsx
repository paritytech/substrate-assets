import React from 'react';
import './Icon.css';
import { CopyToClipboard } from 'react-copy-to-clipboard';
import { log } from 'console';

const BASE_URL = "https://raw.githubusercontent.com/paritytech/substrate-assets/master/";

type IconProp = {
    image: string;
    dir: string;
};

export const Icon = (data: IconProp) => {
    const url = `${BASE_URL}/${data.dir}/${data.image}`;

    const onClick = React.useCallback(({ target: { innerText } }: any) => {
    }, [])

    const onCopy = React.useCallback((value: any) => {
        console.log(`URL copied to clipboard: ${value}} `);
    }, [])

    return (
        <div className="icon">
            <CopyToClipboard text={url} onCopy={onCopy}>
                <img onClick={onClick} src={url} alt="" />
            </CopyToClipboard>
        </div>
    )
}
