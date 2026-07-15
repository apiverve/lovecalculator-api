declare module '@apiverve/lovecalculator' {
  export interface lovecalculatorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface lovecalculatorResponse {
    status: string;
    error: string | null;
    data: LoveCalculatorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface LoveCalculatorData {
      name1:          null | string;
      name2:          null | string;
      lovePercentage: null | string;
      response:       null | string;
      additionalText: null | string;
  }

  export default class lovecalculatorWrapper {
    constructor(options: lovecalculatorOptions);

    execute(callback: (error: any, data: lovecalculatorResponse | null) => void): Promise<lovecalculatorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: lovecalculatorResponse | null) => void): Promise<lovecalculatorResponse>;
    execute(query?: Record<string, any>): Promise<lovecalculatorResponse>;
  }
}
