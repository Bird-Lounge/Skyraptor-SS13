/**
 * @file
 * @copyright 2020 Aleksej Komarov
 * @license MIT
 */

import { KEY } from 'common/keys';
import { classes } from 'common/react';
import { debounce } from 'common/timer';
import { KeyboardEvent, SyntheticEvent, useEffect, useRef } from 'react';

import { Box, BoxProps } from './Box';

type ConditionalProps =
  | {
      /**
       * Mark this if you want to debounce onInput.
       *
       * This is useful for expensive filters, large lists etc.
       *
       * Requires `onInput` to be set.
       */
      expensive?: boolean;
      /**
       * Fires on each key press / value change. Used for searching.
       *
       * If it's a large list, consider using `expensive` prop.
       */
      onInput: (event: SyntheticEvent<HTMLInputElement>, value: string) => void;
    }
  | {
      /** This prop requires onInput to be set */
      expensive?: never;
      onInput?: never;
    };

type OptionalProps = Partial<{
  /** Automatically focuses the input on mount */
  autoFocus: boolean;
  /** Automatically selects the input value on focus */
  autoSelect: boolean;
  /** The class name of the input */
  className: string;
<<<<<<< HEAD
=======
  /** Disables the input */
  disabled: boolean;
  /** Mark this if you want the input to be as wide as possible */
>>>>>>> 8b6b96d4464 (Input changes take XII: Responsive small lists (#80720))
  fluid: boolean;
  /** The maximum length of the input value */
  maxLength: number;
  /** Mark this if you want to use a monospace font */
  monospace: boolean;
  /** Fires when user is 'done typing': Clicked out, blur, enter key */
  onChange: (event: SyntheticEvent<HTMLInputElement>, value: string) => void;
  /** Fires once the enter key is pressed */
  onEnter?: (event: SyntheticEvent<HTMLInputElement>, value: string) => void;
  /** Fires once the escape key is pressed */
  onEscape: (event: SyntheticEvent<HTMLInputElement>) => void;
  /** The placeholder text when everything is cleared */
  placeholder: string;
  /** Clears the input value on enter */
  selfClear: boolean;
  /** The state variable of the input. */
  value: string | number;
}>;

type Props = OptionalProps & ConditionalProps & BoxProps;

export function toInputValue(value: string | number | undefined) {
  return typeof value !== 'number' && typeof value !== 'string'
    ? ''
    : String(value);
}

const inputDebounce = debounce((onInput: () => void) => onInput(), 250);

/**
 * ### Input
 * A basic text input which allow users to enter text into a UI.
 * > Input does not support custom font size and height due to the way
 * > it's implemented in CSS. Eventually, this needs to be fixed.
 */
export function Input(props: Props) {
  const {
    autoFocus,
    autoSelect,
<<<<<<< HEAD
=======
    className,
    disabled,
    expensive,
    fluid,
>>>>>>> 8b6b96d4464 (Input changes take XII: Responsive small lists (#80720))
    maxLength,
    onChange,
    onEnter,
    onEscape,
    onInput,
    placeholder,
    selfClear,
    value,
    ...boxProps
  } = props;
  const { className, fluid, monospace, ...rest } = boxProps;

  const inputRef = useRef<HTMLInputElement>(null);

  function handleInput(event: SyntheticEvent<HTMLInputElement>) {
    if (!onInput) return;

    const value = event.currentTarget?.value;

    if (expensive) {
      inputDebounce(() => onInput(event, value));
    } else {
      onInput(event, value);
    }
  }

  function handleKeyDown(event: KeyboardEvent<HTMLInputElement>) {
    if (event.key === KEY.Enter) {
      onEnter?.(event, event.currentTarget.value);
      if (selfClear) {
        event.currentTarget.value = '';
      } else {
        event.currentTarget.blur();
        onChange?.(event, event.currentTarget.value);
      }

      return;
    }

    if (event.key === KEY.Escape) {
      onEscape?.(event);

      event.currentTarget.value = toInputValue(value);
      event.currentTarget.blur();
    }
  }

  /** Focuses the input on mount */
  useEffect(() => {
    if (!autoFocus && !autoSelect) return;

    const input = inputRef.current;
    if (!input) return;

    setTimeout(() => {
      input.focus();

      if (autoSelect) {
        input.select();
      }
    }, 1);
  }, []);

  /** Updates the initial value on props change */
  useEffect(() => {
    const input = inputRef.current;
    if (!input) return;

    const newValue = toInputValue(value);
    if (input.value === newValue) return;

    input.value = newValue;
  }, [value]);

  return (
    <Box
      className={classes([
        'Input',
        fluid && 'Input--fluid',
        monospace && 'Input--monospace',
        className,
      ])}
      {...rest}
    >
      <div className="Input__baseline">.</div>
      <input
        className="Input__input"
        maxLength={maxLength}
        onBlur={(event) => onChange?.(event, event.target.value)}
        onChange={handleInput}
        onKeyDown={handleKeyDown}
        placeholder={placeholder}
        ref={inputRef}
      />
    </Box>
  );
}
