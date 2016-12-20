#VIPER
- 交互器 -- 包括关于数据和网络请求的业务逻辑，例如创建一个实体（数据），或者从服务器中获取一些数据。为了实现这些功能，需要使用服务、管理器，但是他们并不被认为是VIPER架构内的模块，而是外部依赖。
- 展示器 -- 包含UI层面的业务逻辑以及在交互器层面的方法调用。
- 实体 -- 普通的数据对象，不属于数据访问层次，因为数据访问属于交互器的职责。
- 路由器 -- 用来连接VIPER的各个模块。
- <img src='viper0.png'/>

#MVP

<img src='MVP0.png'/>
<img src='MVVM0.png'/>

##View

##Interactor

##Presenter

##Entity

##Route

##UIView

##UIViewController

##Model

## Links
- <a href='https://www.objc.io/issues/13-architecture/viper/'>objc.io</a>
