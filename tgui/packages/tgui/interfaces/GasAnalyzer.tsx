import { useBackend } from '../backend';
<<<<<<< HEAD
import { GasmixParser } from './common/GasmixParser';
import type { Gasmix } from './common/GasmixParser';
import { AtmosHandbookContent, atmosHandbookHooks } from './common/AtmosHandbook';
import { Window } from '../layouts';
import { Section } from '../components';
=======
import { Section } from '../components';
import { Window } from '../layouts';
import {
  AtmosHandbookContent,
  atmosHandbookHooks,
} from './common/AtmosHandbook';
import type { Gasmix } from './common/GasmixParser';
import { GasmixParser } from './common/GasmixParser';
>>>>>>> 6ccb751678c (Updates eslint + sorts imports (#80430))

export type GasAnalyzerData = {
  gasmixes: Gasmix[];
};

export const GasAnalyzerContent = (props) => {
  const { act, data } = useBackend<GasAnalyzerData>();
  const { gasmixes } = data;
  const [setActiveGasId, setActiveReactionId] = atmosHandbookHooks();
  return (
    <>
      {gasmixes.map((gasmix) => (
        <Section title={gasmix.name} key={gasmix.reference}>
          <GasmixParser
            gasmix={gasmix}
            gasesOnClick={setActiveGasId}
            reactionOnClick={setActiveReactionId}
          />
        </Section>
      ))}
      <AtmosHandbookContent vertical />
    </>
  );
};

export const GasAnalyzer = (props) => {
  return (
    <Window width={500} height={450}>
      <Window.Content scrollable>
        <GasAnalyzerContent />
      </Window.Content>
    </Window>
  );
};
