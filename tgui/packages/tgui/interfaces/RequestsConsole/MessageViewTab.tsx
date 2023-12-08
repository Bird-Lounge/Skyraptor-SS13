import { decodeHtmlEntities } from 'common/string';

import { useBackend } from '../../backend';
<<<<<<< HEAD
<<<<<<< HEAD
import { BlockQuote, Button, LabeledList, NoticeBox, Section, Stack } from '../../components';
import { decodeHtmlEntities } from 'common/string';
import { RequestMessage, RequestPriority, RequestsData, RequestType } from './types';
=======
import {
  BlockQuote,
  Button,
  LabeledList,
  NoticeBox,
  Section,
  Stack,
} from '../../components';
=======
import {
  BlockQuote,
  Button,
  LabeledList,
  NoticeBox,
  Section,
  Stack,
} from '../../components';
import { decodeHtmlEntities } from 'common/string';
>>>>>>> 2631b0b8ef1 (Replaces prettierx with the normal prettier (#80189))
import {
  RequestMessage,
  RequestPriority,
  RequestsData,
  RequestType,
} from './types';
<<<<<<< HEAD
>>>>>>> 6ccb751678c (Updates eslint + sorts imports (#80430))
=======
>>>>>>> 2631b0b8ef1 (Replaces prettierx with the normal prettier (#80189))

export const MessageViewTab = (props) => {
  const { act, data } = useBackend<RequestsData>();
  const { messages = [] } = data;
  return (
    <Section fill scrollable>
      <Stack vertical>
        {messages.map((message) => (
          <MessageDisplay key={message.received_time} message={message} />
        ))}
      </Stack>
    </Section>
  );
};

const MessageDisplay = (props: { message: RequestMessage }) => {
  const { act } = useBackend();
  const { message } = props;
  const append_list_keys = message.appended_list
    ? Object.keys(message.appended_list)
    : [];
  return (
    <Stack.Item>
      <Section
        title={
          message.request_type +
          ' from ' +
          message.sender_department +
          ', ' +
          message.received_time
        }
      >
        {message.priority === RequestPriority.HIGH && (
          <NoticeBox warning>High Priority</NoticeBox>
        )}
        {message.priority === RequestPriority.EXTREME && (
          <NoticeBox bad>!!!Extreme Priority!!!</NoticeBox>
        )}
        <BlockQuote>
          {decodeHtmlEntities(message.content)}
          {!!message.appended_list && !!append_list_keys.length && (
            <LabeledList>
              {append_list_keys.map((list_key) => (
                <LabeledList.Item key={list_key} label={list_key}>
                  {message.appended_list[list_key]}
                </LabeledList.Item>
              ))}
            </LabeledList>
          )}
        </BlockQuote>
        <LabeledList>
          <LabeledList.Item label="Message Verified By">
            {message.message_verified_by || 'Not Verified'}
          </LabeledList.Item>
          <LabeledList.Item label="Message Stamped By">
            {message.message_stamped_by || 'Not Stamped'}
          </LabeledList.Item>
        </LabeledList>
        {message.request_type !== RequestType.ORE_UPDATE && (
          <Section>
            <Button
              icon="reply"
              content="Quick Reply"
              onClick={() => {
                act('quick_reply', {
                  reply_recipient: message.sender_department,
                });
              }}
            />
          </Section>
        )}
      </Section>
    </Stack.Item>
  );
};
