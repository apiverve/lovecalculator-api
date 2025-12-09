declare module '@apiverve/lovecalculator' {
  export interface lovecalculatorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface lovecalculatorResponse {
    status: string;
    error: string | null;
    data: LoveCalculatorData;
    code?: number;
  }


  interface LoveCalculatorData {
      name1:          string;
      name2:          string;
      lovePercentage: string;
      response:       string;
      additionalText: string;
  }

  export default class lovecalculatorWrapper {
    constructor(options: lovecalculatorOptions);

    execute(callback: (error: any, data: lovecalculatorResponse | null) => void): Promise<lovecalculatorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: lovecalculatorResponse | null) => void): Promise<lovecalculatorResponse>;
    execute(query?: Record<string, any>): Promise<lovecalculatorResponse>;
  }
}
