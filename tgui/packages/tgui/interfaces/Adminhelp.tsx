import { BooleanLike } from 'common/react';
import { useBackend, useLocalState } from '../backend';
import { TextArea, Stack, Button, NoticeBox, Input, Box } from '../components';
import { Window } from '../layouts';

type AdminhelpData = {
  adminCount: number;
  urgentAhelpEnabled: BooleanLike;
  bannedFromUrgentAhelp: BooleanLike;
  urgentAhelpPromptMessage: string;
};

export const Adminhelp = (props) => {
  const { act, data } = useBackend<AdminhelpData>();
  const {
    adminCount,
    urgentAhelpEnabled,
    bannedFromUrgentAhelp,
    urgentAhelpPromptMessage,
  } = data;
  const [requestForAdmin, setRequestForAdmin] = useLocalState(
    'request_for_admin',
    false,
  );
  const [currentlyInputting, setCurrentlyInputting] = useLocalState(
    'confirm_request',
    false,
  );
  const [ahelpMessage, setAhelpMessage] = useLocalState('ahelp_message', '');

  const confirmationText = 'alert admins';
  return (
    <Window title="Create Adminhelp" theme="admin" height={300} width={500}>
      <Window.Content
        style={{
<<<<<<< HEAD
          'background-image': 'none',
        }}>
=======
          backgroundImage: 'none',
        }}
      >
>>>>>>> 2631b0b8ef1 (Replaces prettierx with the normal prettier (#80189))
        <Stack vertical fill>
          <Stack.Item grow>
            <TextArea
              autoFocus
              height="100%"
              value={ahelpMessage}
              placeholder="Admin help"
              onChange={(e, value) => setAhelpMessage(value)}
            />
          </Stack.Item>
          {urgentAhelpEnabled && adminCount <= 0 && (
            <Stack.Item>
              <NoticeBox info>
                {urgentAhelpPromptMessage}
                {(currentlyInputting && (
                  <Box
                    mt={1}
                    width="100%"
                    fontFamily="arial"
                    backgroundColor="grey"
                    style={{
<<<<<<< HEAD
                      'font-style': 'normal',
                    }}>
=======
                      fontStyle: 'normal',
                    }}
                  >
>>>>>>> 2631b0b8ef1 (Replaces prettierx with the normal prettier (#80189))
                    Input &apos;{confirmationText}&apos; to proceed.
                    <Input
                      placeholder="Confirmation Prompt"
                      autoFocus
                      fluid
                      onChange={(e, value) => {
                        if (value === confirmationText) {
                          setRequestForAdmin(true);
                        }
                        setCurrentlyInputting(false);
                      }}
                    />
                  </Box>
                )) || (
                  <Button
                    mt={1}
                    content="Alert admins?"
                    onClick={() => {
                      if (requestForAdmin) {
                        setRequestForAdmin(false);
                      } else {
                        setCurrentlyInputting(true);
                      }
                    }}
                    color={requestForAdmin ? 'orange' : 'blue'}
                    icon={requestForAdmin ? 'check-square-o' : 'square-o'}
                    disabled={bannedFromUrgentAhelp}
                    tooltip={
                      bannedFromUrgentAhelp
                        ? 'You are banned from using urgent ahelps.'
                        : null
                    }
                    fluid
                    textAlign="center"
                  />
                )}
              </NoticeBox>
            </Stack.Item>
          )}
          <Stack.Item>
            <Button
              color="good"
              fluid
              content="Submit"
              textAlign="center"
              onClick={() =>
                act('ahelp', {
                  urgent: requestForAdmin,
                  message: ahelpMessage,
                })
              }
            />
          </Stack.Item>
        </Stack>
      </Window.Content>
    </Window>
  );
};
