
get_nested_value()
{
    local object="$1"
    local key="$2"
    jq_key_value=$(echo $key | tr '/' '.')
    echo $(echo "$object" | jq -r ".$jq_key_value")   
}

nested_object='{"a":{"b":{"c":"d"}}}'
key_value="a/b/c"

result=$(get_nested_value "$nested_object" "$key_value")
echo "The result of the function is: $result"
