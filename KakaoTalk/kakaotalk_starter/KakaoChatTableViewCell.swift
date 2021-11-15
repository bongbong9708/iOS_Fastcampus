//
//  KakaoChatTableViewCell.swift
//  Twitter_starter
//
//  Created by James Kim on 7/27/20.
//  Copyright © 2020 James Kim. All rights reserved.
//

import UIKit

class KakaoChatTableViewCell: UITableViewCell {
    /*
     [x] TODO: senderImageView, nameLabel, lastMessageLabel, lastSentDateLabel를 만들어서 outlet으로 추가해주세요.
     */
    @IBOutlet var senderImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lastMessageLabel: UILabel!
    @IBOutlet var lastSentDateLabel: UILabel!
    
    func configure(message: Message) {
        /*
         [x] TODO: Cell이 생성되는 시점에서 메세지를 불러 렌더링해주세요
         
         예를들어..
         senderImageView.image = message.senderImage
         */
        senderImageView.image = message.senderImage
        nameLabel.text = message.senderName
        lastMessageLabel.text = message.lastMessage
        lastSentDateLabel.text = message.lastSentDate
        
        // 프로필 사진 둥글게 만들기
        senderImageView.layer.cornerRadius = senderImageView.frame.width/2
        senderImageView.clipsToBounds = true
    }
}
