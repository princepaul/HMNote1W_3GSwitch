.class Lcom/android/phone/settings/cloudbackup/SipProfileModel;
.super Ljava/lang/Object;
.source "SipProfileModel.java"


# instance fields
.field authUserName:Ljava/lang/String;

.field autoRegistration:Z

.field displayName:Ljava/lang/String;

.field keepAlive:Z

.field outboundProxy:Ljava/lang/String;

.field passWord:Ljava/lang/String;

.field port:I

.field profileName:Ljava/lang/String;

.field protocol:Ljava/lang/String;

.field serverDomain:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFromSipProfile(Landroid/net/sip/SipProfile;)Lcom/android/phone/settings/cloudbackup/SipProfileModel;
    .locals 1
    .param p1, "s"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->userName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->serverDomain:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->profileName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->passWord:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProxyAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->outboundProxy:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->protocol:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->displayName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getPort()I

    move-result v0

    iput v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->port:I

    .line 73
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSendKeepAlive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->keepAlive:Z

    .line 74
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getAutoRegistration()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->autoRegistration:Z

    .line 75
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getAuthUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->authUserName:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public getAuthUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->authUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getOutboundProxy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->outboundProxy:Ljava/lang/String;

    return-object v0
.end method

.method public getPassWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->passWord:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->port:I

    return v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->profileName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getServerDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->serverDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoRegistration()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->autoRegistration:Z

    return v0
.end method

.method public isKeepAlive()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->keepAlive:Z

    return v0
.end method

.method public makeSipProfile()Landroid/net/sip/SipProfile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    invoke-virtual {p0}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->getServerDomain()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProfileName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->getPassWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->getOutboundProxy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setOutboundProxy(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->isKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setSendKeepAlive(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->isAutoRegistration()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->getAuthUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAuthUserName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method
