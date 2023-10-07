import React from 'react';

function Status(props) {
  return (
    <section>
      {!props.error &&
        <>API Version: <code>{props.status.version}</code></>}
      {!!props.error &&
        <>API Error: <code>{props.error}</code></>}
    </section>
  );
}

export default Status;