#!/bin/bash

# Check if the src directory exists
if [ ! -d "src" ]; then
    echo
    echo -e " \033[31mMake sure you're in the root directory of your project\033[0m"
    echo " Not found src folder"
    echo "Becareful to use, it's on beta version, please consider contribution"
    exit 0
fi

# path for component
root_dir="src/components"

# not found the comp_dironents direcoty
if [ ! -d "src/components" ]; then
    # Create Component directy
    mkdir $root_dir
    echo -e "\033[32m[OK]\033[0m - components directory created!"
fi

# get the second parament
# name of component to be created
new_component_name=$1

# checking if the directory already
# doesn't exist
if [ ! -d $new_component_name ]; then

    # path of the component which is about to create
    make_new_dir="$root_dir/${new_component_name}"

    # if the component already exists, stop overwriting
    if [ -d $make_new_dir ]; then
        echo -e "\033[31m[OK]\033[0m - component/${new_component_name} already exits!"
        exit 0
    fi

    mkdir $make_new_dir
    echo -e "\033[32m[OK]\033[0m - component/${new_component_name} created!"

    # create .tsx file with the same same as parameter as file
    get_last_name=$(echo $make_new_dir | awk -F '/' '{print $NF}')

    # create files
    touch "$make_new_dir/${get_last_name}.tsx"
    touch "$make_new_dir/${get_last_name}.scss"
    echo -e "
        import * as React from "react"
        import { useState } from "react"

        interface Props {}

        export const ${new_component_name}: React.FC<Props> = ({}) => {
        const [state, setState] = useState<boolean | undefined>(undefined)

        return <h1> ${new_component_name} Component </h1>
        } " >"$make_new_dir/${new_component_name}.tsx"

    # generate log
    echo -e "\033[32m[OK]\033[0m - $make_new_dir/${new_component_name} file created!"
fi
