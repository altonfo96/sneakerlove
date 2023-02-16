import { useEffect, useState } from 'react'
import SneakerContainer from './SneakerContainer'
import './App.css'

function App() {

  const [sneakers, setSneakers] = useState([])
  useEffect(() => {
    const request = async()=> {
      const req = await fetch("/sneakers")
      let res = await req.json()
      setSneakers(res)
      console.log(res)
    }
    request()
  },[])

  return (
    <>
    <SneakerContainer sneakers={sneakers}/>
    </>
  )
}

export default App
