
        import * as React from react
        import { useState } from react

        interface Props {}

        export const Header: React.FC<Props> = ({}) => {
        const [state, setState] = useState<boolean | undefined>(undefined)

        return <h1> Header Component </h1>
        } 
