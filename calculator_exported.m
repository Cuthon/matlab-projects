classdef calculator_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure   matlab.ui.Figure
        TextArea   matlab.ui.control.TextArea
        Button     matlab.ui.control.Button
        Button_2   matlab.ui.control.Button
        Button_3   matlab.ui.control.Button
        Button_4   matlab.ui.control.Button
        Button_5   matlab.ui.control.Button
        Button_6   matlab.ui.control.Button
        Button_7   matlab.ui.control.Button
        Button_8   matlab.ui.control.Button
        Button_9   matlab.ui.control.Button
        Button_10  matlab.ui.control.Button
        Button_11  matlab.ui.control.Button
        Button_12  matlab.ui.control.Button
        Button_13  matlab.ui.control.Button
        Button_14  matlab.ui.control.Button
        Button_15  matlab.ui.control.Button
        Button_16  matlab.ui.control.Button
        Button_17  matlab.ui.control.Button
        xButton    matlab.ui.control.Button
        Button_21  matlab.ui.control.Button
        CButton    matlab.ui.control.Button
        Button_18  matlab.ui.control.Button
        xButton_2  matlab.ui.control.Button
        Button_20  matlab.ui.control.Button
    end

    
    properties (Access = private)
        express_str = ''         % the expression string
        ans = ''                 % the answer
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: Button
        function Num_0Pushed(app, event)
            if strcmp(app.TextArea.Value,'0')
                
            else
                app.express_str = strcat(app.express_str,'0');
                app.TextArea.Value = app.express_str;
            end      
        end

        % Button pushed function: Button_3
        function Num_1Pushed(app, event)
            app.express_str = strcat(app.express_str,'1');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: Button_4
        function Num_2Pushed(app, event)
            app.express_str = strcat(app.express_str,'2');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: Button_5
        function Num_3Pushed(app, event)
            app.express_str = strcat(app.express_str,'3');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: Button_9
        function Num_4Pushed(app, event)
            app.express_str = strcat(app.express_str,'4');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: Button_8
        function Num_5Pushed(app, event)
            app.express_str = strcat(app.express_str,'5');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: Button_7
        function Num_6Pushed(app, event)
            app.express_str = strcat(app.express_str,'6');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: Button_12
        function Num_7Pushed(app, event)
            app.express_str = strcat(app.express_str,'7');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: Button_11
        function Num_8Pushed(app, event)
            app.express_str = strcat(app.express_str,'8');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: Button_10
        function Num_9Pushed(app, event)
            app.express_str = strcat(app.express_str,'9');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: Button_6
        function Dot_Pushed(app, event)
            app.express_str = strcat(app.express_str,'.');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: Button_20
        function Lbracket_Pushed(app, event)
            app.express_str = strcat(app.express_str,'(');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: Button_21
        function Rbracket_Pushed(app, event)
            app.express_str = strcat(app.express_str,')');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: xButton
        function Squre_Pushed(app, event)
            app.express_str = strcat(app.express_str,'^2');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: CButton
        function Clear_Pushed(app, event)
            app.express_str = '';
            app.TextArea.Value = '0';
        end

        % Button pushed function: Button_18
        function Delete_Pushed(app, event)
            tail = length(app.express_str);
            app.express_str = app.express_str(1,1:tail-1);
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: Button_13
        function Divide_Pushed(app, event)
            app.express_str = strcat(app.express_str,'/');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: Button_14
        function Multip_Pushed(app, event)
            app.express_str = strcat(app.express_str,'*');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: Button_15
        function Sub_Pushed(app, event)
            app.express_str = strcat(app.express_str,'-');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: Button_16
        function Add_Pushed(app, event)
            app.express_str = strcat(app.express_str,'+');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: xButton_2
        function Invert_Pushed(app, event)
            if length(app.express_str)>0
                try
                    result = eval(app.express_str);
                    app.ans = num2str(1/result);
                    app.express_str = app.ans;
                    app.TextArea.Value = app.ans;
                catch 
                    app.express_str = '';
                    app.TextArea.Value = 'error';
                end              
            end
        end

        % Button pushed function: Button_17
        function Pow_Pushed(app, event)
            app.express_str = strcat(app.express_str,'^');
            app.TextArea.Value = app.express_str;
        end

        % Button pushed function: Button_2
        function Equal_Pushed(app, event)
            if length(app.express_str)>0
                try
                    result = eval(app.express_str);
                    app.ans = num2str(result);
                    app.express_str = app.ans;
                    app.TextArea.Value = app.ans;
                catch 
                    app.express_str = '';
                    app.TextArea.Value = 'error';
                end
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 357 481];
            app.UIFigure.Name = 'MATLAB App';

            % Create TextArea
            app.TextArea = uitextarea(app.UIFigure);
            app.TextArea.Tag = 'result';
            app.TextArea.Editable = 'off';
            app.TextArea.HorizontalAlignment = 'right';
            app.TextArea.FontSize = 24;
            app.TextArea.Position = [38 351 285 79];
            app.TextArea.Value = {'0'};

            % Create Button
            app.Button = uibutton(app.UIFigure, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @Num_0Pushed, true);
            app.Button.Tag = '0';
            app.Button.FontSize = 24;
            app.Button.Position = [38 63 100 42];
            app.Button.Text = '0';

            % Create Button_2
            app.Button_2 = uibutton(app.UIFigure, 'push');
            app.Button_2.ButtonPushedFcn = createCallbackFcn(app, @Equal_Pushed, true);
            app.Button_2.Tag = '=';
            app.Button_2.FontSize = 32;
            app.Button_2.Position = [276 63 47 94];
            app.Button_2.Text = '=';

            % Create Button_3
            app.Button_3 = uibutton(app.UIFigure, 'push');
            app.Button_3.ButtonPushedFcn = createCallbackFcn(app, @Num_1Pushed, true);
            app.Button_3.Tag = '1';
            app.Button_3.FontSize = 24;
            app.Button_3.Position = [38 115 47 42];
            app.Button_3.Text = '1';

            % Create Button_4
            app.Button_4 = uibutton(app.UIFigure, 'push');
            app.Button_4.ButtonPushedFcn = createCallbackFcn(app, @Num_2Pushed, true);
            app.Button_4.Tag = '2';
            app.Button_4.FontSize = 24;
            app.Button_4.Position = [91 115 47 42];
            app.Button_4.Text = '2';

            % Create Button_5
            app.Button_5 = uibutton(app.UIFigure, 'push');
            app.Button_5.ButtonPushedFcn = createCallbackFcn(app, @Num_3Pushed, true);
            app.Button_5.Tag = '3';
            app.Button_5.FontSize = 24;
            app.Button_5.Position = [146 115 47 42];
            app.Button_5.Text = '3';

            % Create Button_6
            app.Button_6 = uibutton(app.UIFigure, 'push');
            app.Button_6.ButtonPushedFcn = createCallbackFcn(app, @Dot_Pushed, true);
            app.Button_6.Tag = '.';
            app.Button_6.FontSize = 24;
            app.Button_6.FontWeight = 'bold';
            app.Button_6.Position = [146 63 47 42];
            app.Button_6.Text = '.';

            % Create Button_7
            app.Button_7 = uibutton(app.UIFigure, 'push');
            app.Button_7.ButtonPushedFcn = createCallbackFcn(app, @Num_6Pushed, true);
            app.Button_7.Tag = '6';
            app.Button_7.FontSize = 24;
            app.Button_7.Position = [146 169 47 42];
            app.Button_7.Text = '6';

            % Create Button_8
            app.Button_8 = uibutton(app.UIFigure, 'push');
            app.Button_8.ButtonPushedFcn = createCallbackFcn(app, @Num_5Pushed, true);
            app.Button_8.Tag = '5';
            app.Button_8.FontSize = 24;
            app.Button_8.Position = [91 169 47 42];
            app.Button_8.Text = '5';

            % Create Button_9
            app.Button_9 = uibutton(app.UIFigure, 'push');
            app.Button_9.ButtonPushedFcn = createCallbackFcn(app, @Num_4Pushed, true);
            app.Button_9.Tag = '4';
            app.Button_9.FontSize = 24;
            app.Button_9.Position = [38 169 47 42];
            app.Button_9.Text = '4';

            % Create Button_10
            app.Button_10 = uibutton(app.UIFigure, 'push');
            app.Button_10.ButtonPushedFcn = createCallbackFcn(app, @Num_9Pushed, true);
            app.Button_10.Tag = '9';
            app.Button_10.FontSize = 24;
            app.Button_10.Position = [146 223 47 42];
            app.Button_10.Text = '9';

            % Create Button_11
            app.Button_11 = uibutton(app.UIFigure, 'push');
            app.Button_11.ButtonPushedFcn = createCallbackFcn(app, @Num_8Pushed, true);
            app.Button_11.Tag = '8';
            app.Button_11.FontSize = 24;
            app.Button_11.Position = [91 223 47 42];
            app.Button_11.Text = '8';

            % Create Button_12
            app.Button_12 = uibutton(app.UIFigure, 'push');
            app.Button_12.ButtonPushedFcn = createCallbackFcn(app, @Num_7Pushed, true);
            app.Button_12.Tag = '7';
            app.Button_12.FontSize = 24;
            app.Button_12.Position = [38 223 47 42];
            app.Button_12.Text = '7';

            % Create Button_13
            app.Button_13 = uibutton(app.UIFigure, 'push');
            app.Button_13.ButtonPushedFcn = createCallbackFcn(app, @Divide_Pushed, true);
            app.Button_13.Tag = '/';
            app.Button_13.FontSize = 24;
            app.Button_13.Position = [220 223 47 42];
            app.Button_13.Text = '÷';

            % Create Button_14
            app.Button_14 = uibutton(app.UIFigure, 'push');
            app.Button_14.ButtonPushedFcn = createCallbackFcn(app, @Multip_Pushed, true);
            app.Button_14.Tag = '*';
            app.Button_14.FontSize = 24;
            app.Button_14.Position = [220 169 47 42];
            app.Button_14.Text = '×';

            % Create Button_15
            app.Button_15 = uibutton(app.UIFigure, 'push');
            app.Button_15.ButtonPushedFcn = createCallbackFcn(app, @Sub_Pushed, true);
            app.Button_15.Tag = '-';
            app.Button_15.FontSize = 24;
            app.Button_15.Position = [220 115 47 42];
            app.Button_15.Text = '-';

            % Create Button_16
            app.Button_16 = uibutton(app.UIFigure, 'push');
            app.Button_16.ButtonPushedFcn = createCallbackFcn(app, @Add_Pushed, true);
            app.Button_16.Tag = '+';
            app.Button_16.FontSize = 24;
            app.Button_16.Position = [220 63 47 42];
            app.Button_16.Text = '+';

            % Create Button_17
            app.Button_17 = uibutton(app.UIFigure, 'push');
            app.Button_17.ButtonPushedFcn = createCallbackFcn(app, @Pow_Pushed, true);
            app.Button_17.Tag = '^';
            app.Button_17.FontSize = 24;
            app.Button_17.Position = [276 169 47 42];
            app.Button_17.Text = '^';

            % Create xButton
            app.xButton = uibutton(app.UIFigure, 'push');
            app.xButton.ButtonPushedFcn = createCallbackFcn(app, @Squre_Pushed, true);
            app.xButton.Tag = 'square';
            app.xButton.FontSize = 24;
            app.xButton.Position = [146 274 47 42];
            app.xButton.Text = 'x²';

            % Create Button_21
            app.Button_21 = uibutton(app.UIFigure, 'push');
            app.Button_21.ButtonPushedFcn = createCallbackFcn(app, @Rbracket_Pushed, true);
            app.Button_21.Tag = ')';
            app.Button_21.FontSize = 24;
            app.Button_21.Position = [91 274 47 42];
            app.Button_21.Text = ')';

            % Create CButton
            app.CButton = uibutton(app.UIFigure, 'push');
            app.CButton.ButtonPushedFcn = createCallbackFcn(app, @Clear_Pushed, true);
            app.CButton.Tag = 'clear';
            app.CButton.FontSize = 24;
            app.CButton.Position = [220 274 47 42];
            app.CButton.Text = 'C';

            % Create Button_18
            app.Button_18 = uibutton(app.UIFigure, 'push');
            app.Button_18.ButtonPushedFcn = createCallbackFcn(app, @Delete_Pushed, true);
            app.Button_18.Tag = 'delete';
            app.Button_18.FontSize = 24;
            app.Button_18.Position = [276 274 47 42];
            app.Button_18.Text = 'ÿ';

            % Create xButton_2
            app.xButton_2 = uibutton(app.UIFigure, 'push');
            app.xButton_2.ButtonPushedFcn = createCallbackFcn(app, @Invert_Pushed, true);
            app.xButton_2.Tag = 'invert';
            app.xButton_2.FontSize = 16;
            app.xButton_2.Position = [275.5 223 48 42];
            app.xButton_2.Text = '1/x';

            % Create Button_20
            app.Button_20 = uibutton(app.UIFigure, 'push');
            app.Button_20.ButtonPushedFcn = createCallbackFcn(app, @Lbracket_Pushed, true);
            app.Button_20.Tag = '(';
            app.Button_20.FontSize = 24;
            app.Button_20.Position = [38 274 47 42];
            app.Button_20.Text = '(';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = calculator_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end