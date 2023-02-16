const SneakerData = ({sneaker}) => {
    return(
        <div>
            <img className = "pic" src = {sneaker.image} alt = "hey"/>
            <p> $ {sneaker.price} </p>
            <p> {sneaker.name} </p>
            
            <button> add to wishlist</button>
            <button> add to cart </button>
        </div>
    )
}
export default SneakerData