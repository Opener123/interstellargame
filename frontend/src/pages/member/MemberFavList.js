import { React, useState, useEffect } from 'react'
import { withRouter, Redirect } from 'react-router-dom'
import './styles/memberFavList.scss'
import fun00 from './images/fun00.png'
import fun01 from './images/fun01.png'
import fun02 from './images/fun02.png'
import fun03 from './images/fun03.png'
import fun04 from './images/fun04.png'
import item001 from './images/item001.jpg'

function MemberFavList(props) {
  const userId = JSON.parse(localStorage.getItem('userId'))
  const [favlist, setFavlist] = useState([])

  async function getFavlistFromServer() {
    // 連接的伺服器資料網址
    const url = `http://localhost:3000/members/getFavlist/` + userId

    // 注意header資料格式要設定，伺服器才知道是json格式
    const request = new Request(url, {
      method: 'GET',
      headers: new Headers({
        Accept: 'application/json',
        'Content-Type': 'appliaction/json',
      }),
    })

    const response = await fetch(request)
    const data = await response.json()
    console.log(data)
    // 設定資料
    setFavlist(data)

    console.log(data)
  }

  useEffect(() => {
    getFavlistFromServer()
  }, [])

  const favlistDisplay = (
    <>
      <div className="container">
        <table className="table">
          <thead>
            <tr>
              <th scope="col" colSpan={3}>
                商品
              </th>
              <th scope="col">金額</th>
              <th scope="col">移除最愛</th>
              <th scope="col">商品詳細</th>
            </tr>
          </thead>
          <tbody>
            {favlist.length &&
              favlist.map((favlist) => {
                return (
                  <tr>
                    <td className="item-img">
                      <img src={favlist.itemImg} alt="商品圖" />
                    </td>
                    <td>{favlist.itemName}</td>
                    <td />
                    <td>{favlist.itemPrice}</td>
                    <td>
                      <i className="far fa-trash-alt" />
                    </td>
                    <td>
                      <div className="order-btn">查看商品</div>
                    </td>
                  </tr>
                )
              })}
          </tbody>
        </table>
      </div>
    </>
  )
  // favlist.length === 0
  //   ? '我的最愛中沒有商品'
  //   : favlist.map((favlist) => {
  //       return (

  //       )
  //     })

  return (
    <>
      <div className="container mt-5">
        <div className="member-btn-group text-center row">
          <div
            className="member-btn col col1"
            onClick={() => {
              props.history.push('/member')
            }}
          >
            <img src={fun00} alt={fun00} />
            <p className="py-1 m-0">會員中心</p>
          </div>
          <div
            className="member-btn col col2"
            onClick={() => {
              props.history.push('/member/memberOrder')
            }}
          >
            <img src={fun01} alt={fun01} />
            <p className="py-1 m-0">查詢訂單</p>
          </div>
          <div
            className="member-btn col col3"
            onClick={() => {
              props.history.push('/member/memberReservation')
            }}
          >
            <img src={fun02} alt={fun02} />
            <p className="py-1 m-0">查詢預約</p>
          </div>
          <div
            className="member-btn col col4"
            onClick={() => {
              props.history.push('/member/memberFavList')
            }}
          >
            <img src={fun03} alt={fun03} className="btn-active" />
            <p className="py-1 m-0 btn-active">我的最愛</p>
          </div>

          <div
            className="member-btn col col5"
            onClick={() => {
              props.history.push('/member/memberCoupon')
            }}
          >
            <img src={fun04} alt={fun04} />
            <p className="py-1 m-0">我的優惠券</p>
          </div>
        </div>
      </div>
      {favlistDisplay}
    </>
  )
}

export default withRouter(MemberFavList)