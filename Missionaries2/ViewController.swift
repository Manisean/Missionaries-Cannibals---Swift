//
//  ViewController.swift
//  Missionaries2
//
//  Created by Mark Hunnewell on 2/23/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var canoeL: UIImageView!
    @IBOutlet weak var canoeR: UIImageView!
    
    @IBOutlet weak var can1L: UIImageView!
    @IBOutlet weak var can2L: UIImageView!
    @IBOutlet weak var can3L: UIImageView!
    @IBOutlet weak var can1R: UIImageView!
    @IBOutlet weak var can2R: UIImageView!
    @IBOutlet weak var can3R: UIImageView!
    @IBOutlet weak var canBase: UIImageView!
    
    @IBOutlet weak var miss1L: UIImageView!
    @IBOutlet weak var miss2L: UIImageView!
    @IBOutlet weak var miss3L: UIImageView!
    @IBOutlet weak var miss1R: UIImageView!
    @IBOutlet weak var miss2R: UIImageView!
    @IBOutlet weak var miss3R: UIImageView!
    @IBOutlet weak var missBase: UIImageView!
    
    @IBOutlet weak var pass1L: UIImageView!
    @IBOutlet weak var pass2L: UIImageView!
    @IBOutlet weak var pass1R: UIImageView!
    @IBOutlet weak var pass2R: UIImageView!
    
    @IBOutlet weak var winLose: UILabel!
    @IBOutlet weak var crossCnt: UILabel!
    
    
    
    var count = 0
    var canCountL = 3
    var canCountR = 0
    var missCountL = 3
    var missCountR = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        canoeR.isHidden = true
        can1R.image = nil
        can2R.image = nil
        can3R.image = nil
        miss1R.image = nil
        miss2R.image = nil
        miss3R.image = nil
        
    }
    
    @IBAction func crossBtn(_ sender: UIButton) {
        winCheck()
        
        if pass1L.image != nil || pass2L.image != nil || pass1R.image != nil || pass2R.image != nil {
            if canoeR.isHidden == false {
                canoeL.isHidden = false
                canoeR.isHidden = true
                pass1L.image = pass1R.image
                pass2L.image = pass2R.image
                pass1R.image = nil
                pass2R.image = nil
            
            } else if canoeR.isHidden == true{
                canoeL.isHidden = true
                canoeR.isHidden = false
                pass1R.image = pass1L.image
                pass2R.image = pass2L.image
                pass1L.image = nil
                pass2L.image = nil
                
            }
            count += 1
            crossCnt.text = "\(count)"
        }
    }
    
    func winCheck() {
        if canCountR > missCountR && missCountR > 0 {
            winLose.text = "LOST"
        } else if canCountL > missCountL && missCountL > 0 {
            winLose.text = "LOST"
        } else if missCountR == 3 && canCountR == 3{
            winLose.text = "VICTORY"
        }
    }
    
    @IBAction func resetBtn(_ sender: UIButton) {
        canoeR.isHidden = true
        can1R.image = nil
        can2R.image = nil
        can3R.image = nil
        miss1R.image = nil
        miss2R.image = nil
        miss3R.image = nil
        
        pass1L.image = nil
        pass2L.image = nil
        pass1R.image = nil
        pass2R.image = nil
        
        winLose.text = ""
        count = 0
        canCountL = 3
        canCountR = 0
        missCountL = 3
        missCountR = 0
        crossCnt.text = "\(count)"
        
        canBase.image = UIImage(named: "Cannibal")
        missBase.image = UIImage(named: "missionary")
        
        canoeL.isHidden = false
        can1L.image = UIImage(named: "Cannibal")
        can2L.image = UIImage(named: "Cannibal")
        can3L.image = UIImage(named: "Cannibal")
        miss1L.image = UIImage(named: "missionary")
        miss2L.image = UIImage(named: "missionary")
        miss3L.image = UIImage(named: "missionary")
    }
    
    @IBAction func can1LB(_ sender: UIButton) {
        if pass1L.image == nil {
            pass1L.image = can1L.image
            can1L.image = nil
            canCountL -= 1
        } else if pass1L.image != nil && can1L != nil && pass2L.image == nil {
            pass2L.image = can1L.image
            can1L.image = nil
            canCountL -= 1
        }
    }
    @IBAction func can2LB(_ sender: UIButton) {
        if pass1L.image == nil {
            pass1L.image = can2L.image
            can2L.image = nil
            canCountL -= 1
        } else if pass1L.image != nil && can2L != nil && pass2L.image == nil {
            pass2L.image = can2L.image
            can2L.image = nil
            canCountL -= 1
        }
    }
    @IBAction func can3LB(_ sender: UIButton) {
        if pass1L.image == nil {
            pass1L.image = can3L.image
            can3L.image = nil
            canCountL -= 1
        } else if pass1L.image != nil && can3L != nil && pass2L.image == nil {
            pass2L.image = can3L.image
            can3L.image = nil
            canCountL -= 1
        }
    }
    @IBAction func miss1LB(_ sender: UIButton) {
        if pass1L.image == nil {
            pass1L.image = miss1L.image
            miss1L.image = nil
            missCountL -= 1
        } else if pass1L.image != nil && miss1L != nil && pass2L.image == nil {
            pass2L.image = miss1L.image
            miss1L.image = nil
            missCountL -= 1
        }
    }
    @IBAction func miss2LB(_ sender: UIButton) {
        if pass1L.image == nil {
            pass1L.image = miss2L.image
            miss2L.image = nil
            missCountL -= 1
        } else if pass1L.image != nil && miss2L != nil && pass2L.image == nil {
            pass2L.image = miss2L.image
            miss2L.image = nil
            missCountL -= 1
        }
    }
    @IBAction func miss3LB(_ sender: UIButton) {
        if pass1L.image == nil {
            pass1L.image = miss3L.image
            miss3L.image = nil
            missCountL -= 1
        } else if pass1L.image != nil && miss3L != nil && pass2L.image == nil {
            pass2L.image = miss3L.image
            miss3L.image = nil
            missCountL -= 1
        }
    }
    @IBAction func pass1LB(_ sender: UIButton) {
        if pass1L.image != nil {
            if pass1L.image == canBase.image {
                if can1L.image == nil {
                    can1L.image = pass1L.image
                    canCountL += 1
                } else if can2L.image == nil {
                    can2L.image = pass1L.image
                    canCountL += 1
                } else if can3L.image == nil {
                    can3L.image = pass1L.image
                    canCountL += 1
                }
            } else if pass1L.image == missBase.image {
                if miss1L.image == nil {
                    miss1L.image = pass1L.image
                    missCountL += 1
                } else if miss2L.image == nil {
                    miss2L.image = pass1L.image
                    missCountL += 1
                } else if miss3L.image == nil {
                    miss3L.image = pass1L.image
                    missCountL += 1
                }
            }
            pass1L.image = nil
        }
    }
    @IBAction func pass2LB(_ sender: UIButton) {
        if pass2L.image != nil {
            if pass2L.image == canBase.image {
                if can1L.image == nil {
                    can1L.image = pass2L.image
                    canCountL += 1
                } else if can2L.image == nil {
                    can2L.image = pass2L.image
                    canCountL += 1
                } else if can3L.image == nil {
                    can3L.image = pass2L.image
                    canCountL += 1
                }
            } else if pass2L.image == missBase.image {
                if miss1L.image == nil {
                    miss1L.image = pass2L.image
                    missCountL += 1
                } else if miss2L.image == nil {
                    miss2L.image = pass2L.image
                    missCountL += 1
                } else if miss3L.image == nil {
                    miss3L.image = pass2L.image
                    missCountL += 1
                }
            }
            pass2L.image = nil
        }
    }
    
    @IBAction func can1RB(_ sender: UIButton) {
        if canoeR.isHidden == false && can1R.image != nil {
            if pass1R.image == nil {
                pass1R.image = can1R.image
                can1R.image = nil
                canCountR -= 1
            } else if pass1R.image != nil && pass2R.image == nil {
                pass2R.image = can1R.image
                can1R.image = nil
                canCountR -= 1
            }
        }
    }
    @IBAction func can2RB(_ sender: UIButton) {
        if canoeR.isHidden == false && can2R.image != nil {
            if pass1R.image == nil {
                pass1R.image = can2R.image
                can2R.image = nil
                canCountR -= 1
            } else if pass1R.image != nil && pass2R.image == nil {
                pass2R.image = can2R.image
                can2R.image = nil
                canCountR -= 1
            }
        }
    }
    @IBAction func can3RB(_ sender: UIButton) {
        if canoeR.isHidden == false && can3R.image != nil {
            if pass1R.image == nil {
                pass1R.image = can3R.image
                can3R.image = nil
                canCountR -= 1
            } else if pass1R.image != nil && pass2R.image == nil {
                pass2R.image = can3R.image
                can3R.image = nil
                canCountR -= 1
            }
        }
    }
    @IBAction func miss1RB(_ sender: UIButton) {
        if canoeR.isHidden == false && miss1R.image != nil {
            if pass1R.image == nil {
                pass1R.image = miss1R.image
                miss1R.image = nil
                missCountR -= 1
            } else if pass1R.image != nil && pass2R.image == nil {
                pass2R.image = miss1R.image
                miss1R.image = nil
                missCountR -= 1
            }
        }
    }
    @IBAction func miss2RB(_ sender: UIButton) {
        if canoeR.isHidden == false && miss2R.image != nil {
            if pass1R.image == nil {
                pass1R.image = miss2R.image
                miss2R.image = nil
                missCountR -= 1
            } else if pass1R.image != nil && pass2R.image == nil {
                pass2R.image = miss2R.image
                miss2R.image = nil
                missCountR -= 1
            }
        }
    }
    @IBAction func miss3RB(_ sender: UIButton) {
        if canoeR.isHidden == false && miss3R.image != nil {
            if pass1R.image == nil {
                pass1R.image = miss3R.image
                miss3R.image = nil
                missCountR -= 1
            } else if pass1R.image != nil && pass2R.image == nil {
                pass2R.image = miss3R.image
                miss3R.image = nil
                missCountR -= 1
            }
        }
    }
    
    @IBAction func pass1RB(_ sender: UIButton) {
        if pass1R.image != nil {
            if pass1R.image == canBase.image {
                if can1R.image == nil {
                    can1R.image = pass1R.image
                    canCountR += 1
                } else if can2R.image == nil {
                    can2R.image = pass1R.image
                    canCountR += 1
                } else if can3R.image == nil {
                    can3R.image = pass1R.image
                    canCountR += 1
                }
            } else if pass1R.image == missBase.image {
                if miss1R.image == nil {
                    miss1R.image = pass1R.image
                    missCountR += 1
                } else if miss2R.image == nil {
                    miss2R.image = pass1R.image
                    missCountR += 1
                } else if miss3R.image == nil {
                    miss3R.image = pass1R.image
                    missCountR += 1
                }
            }
            pass1R.image = nil
        }
    }
    
    @IBAction func pass2RB(_ sender: UIButton) {
        if pass2R.image != nil {
            if pass2R.image == canBase.image {
                if can1R.image == nil {
                    can1R.image = pass2R.image
                    canCountR += 1
                } else if can2R.image == nil {
                    can2R.image = pass2R.image
                    canCountR += 1
                } else if can3R.image == nil {
                    can3R.image = pass2R.image
                    canCountR += 1
                }
            } else if pass2R.image == missBase.image {
                if miss1R.image == nil {
                    miss1R.image = pass2R.image
                    missCountR += 1
                } else if miss2R.image == nil {
                    miss2R.image = pass2R.image
                    missCountR += 1
                } else if miss3R.image == nil {
                    miss3R.image = pass2R.image
                    missCountR += 1
                }
            }
            pass2R.image = nil
        }
    }
}

