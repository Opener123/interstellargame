import React from 'react'
import Astronaut from '../img/AST.png'

function GameTitle() {
  return (
    <>
      <div className="gameTitle">
        <div className="gameAstronaut">
          <img src={Astronaut} alt="" />
        </div>
        <div className="titleText">
          <p>FIND YOUR VOUCHER</p>
          <p>玩遊戲領取你的優惠券</p>
          <div className="playNowBtn">馬上玩</div>
        </div>
      </div>
    </>
  )
}

export default GameTitle
