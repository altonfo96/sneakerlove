import SneakerData from "./SneakerData"
const SneakerContainer = ({search,sneakers}) =>{
    return(
            sneakers.map((sneaker) => {
                return(
                    <SneakerData sneaker={sneaker}/>
                )
            })
    )
}
export default SneakerContainer