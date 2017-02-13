.class public Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;
.super Ljava/lang/Object;
.source "PhonePluginExtensionContainer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PhonePluginExtensionContainer"


# instance fields
.field private mCallNotifierExtensionContainer:Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;

.field private mEmergencyDialerExtensionContainer:Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;

.field private mMmiCodeExtensionContainer:Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;

.field private mOthersSettingsExtensionContainer:Lcom/mediatek/phone/ext/OthersSettingsExtensionContainer;

.field private mPhoneCallOptionHandlerExtensionContainer:Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtensionContainer;

.field private mPhoneCallOptionHandlerFactoryExtensionContainer:Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtensionContainer;

.field private mPhoneGlobalsBroadcastReceiverExtensionContainer:Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtensionContainer;

.field private mPhoneGlobalsExtensionContainer:Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;

.field private mSettingsExtensionContainer:Lcom/mediatek/phone/ext/SettingsExtensionContainer;

.field private mVTInCallScreenFlagsExtensionContainer:Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtensionContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mVTInCallScreenFlagsExtensionContainer:Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtensionContainer;

    .line 57
    new-instance v0, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mCallNotifierExtensionContainer:Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;

    .line 58
    new-instance v0, Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneGlobalsExtensionContainer:Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;

    .line 59
    new-instance v0, Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneGlobalsBroadcastReceiverExtensionContainer:Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtensionContainer;

    .line 60
    new-instance v0, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mEmergencyDialerExtensionContainer:Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;

    .line 61
    new-instance v0, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneCallOptionHandlerExtensionContainer:Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtensionContainer;

    .line 62
    new-instance v0, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneCallOptionHandlerFactoryExtensionContainer:Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtensionContainer;

    .line 63
    new-instance v0, Lcom/mediatek/phone/ext/OthersSettingsExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/OthersSettingsExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mOthersSettingsExtensionContainer:Lcom/mediatek/phone/ext/OthersSettingsExtensionContainer;

    .line 64
    new-instance v0, Lcom/mediatek/phone/ext/SettingsExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/SettingsExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mSettingsExtensionContainer:Lcom/mediatek/phone/ext/SettingsExtensionContainer;

    .line 65
    new-instance v0, Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mMmiCodeExtensionContainer:Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;

    .line 66
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string v0, "PhonePluginExtensionContainer"

    invoke-static {v0, p0}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method


# virtual methods
.method public addExtensions(Lcom/mediatek/phone/ext/IPhonePlugin;)V
    .locals 2
    .param p1, "phonePlugin"    # Lcom/mediatek/phone/ext/IPhonePlugin;

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addExtensions, phone plugin object is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mVTInCallScreenFlagsExtensionContainer:Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createVTInCallScreenFlagsExtension()Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtensionContainer;->add(Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtension;)V

    .line 152
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneGlobalsExtensionContainer:Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createPhoneGlobalsExtension()Lcom/mediatek/phone/ext/PhoneGlobalsExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;->add(Lcom/mediatek/phone/ext/PhoneGlobalsExtension;)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneGlobalsBroadcastReceiverExtensionContainer:Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createPhoneGlobalsBroadcastReceiverExtension()Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtensionContainer;->add(Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtension;)V

    .line 154
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mEmergencyDialerExtensionContainer:Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createEmergencyDialerExtension()Lcom/mediatek/phone/ext/EmergencyDialerExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;->add(Lcom/mediatek/phone/ext/EmergencyDialerExtension;)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneCallOptionHandlerExtensionContainer:Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createPhoneCallOptionHandlerExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtensionContainer;->add(Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtension;)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneCallOptionHandlerFactoryExtensionContainer:Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createPhoneCallOptionHandlerFactoryExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtensionContainer;->add(Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtension;)V

    .line 157
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mCallNotifierExtensionContainer:Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createCallNotifierExtension()Lcom/mediatek/phone/ext/CallNotifierExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;->add(Lcom/mediatek/phone/ext/CallNotifierExtension;)V

    .line 158
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mOthersSettingsExtensionContainer:Lcom/mediatek/phone/ext/OthersSettingsExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createOthersSettingsExtension()Lcom/mediatek/phone/ext/OthersSettingsExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/OthersSettingsExtensionContainer;->add(Lcom/mediatek/phone/ext/OthersSettingsExtension;)V

    .line 159
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mSettingsExtensionContainer:Lcom/mediatek/phone/ext/SettingsExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/SettingsExtensionContainer;->add(Lcom/mediatek/phone/ext/SettingsExtension;)V

    .line 160
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mMmiCodeExtensionContainer:Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/phone/ext/IPhonePlugin;->createMmiCodeExtension()Lcom/mediatek/phone/ext/MmiCodeExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;->add(Lcom/mediatek/phone/ext/MmiCodeExtension;)V

    .line 161
    return-void
.end method

.method public getCallNotifierExtension()Lcom/mediatek/phone/ext/CallNotifierExtension;
    .locals 1

    .prologue
    .line 82
    const-string v0, "getCallNotifierExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mCallNotifierExtensionContainer:Lcom/mediatek/phone/ext/CallNotifierExtensionContainer;

    return-object v0
.end method

.method public getEmergencyDialerExtension()Lcom/mediatek/phone/ext/EmergencyDialerExtension;
    .locals 1

    .prologue
    .line 104
    const-string v0, "getEmergencyDialerExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mEmergencyDialerExtensionContainer:Lcom/mediatek/phone/ext/EmergencyDialerExtensionContainer;

    return-object v0
.end method

.method public getMmiCodeExtension()Lcom/mediatek/phone/ext/MmiCodeExtension;
    .locals 1

    .prologue
    .line 140
    const-string v0, "getMmiCodeExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mMmiCodeExtensionContainer:Lcom/mediatek/phone/ext/MmiCodeExtensionContainer;

    return-object v0
.end method

.method public getOthersSettingsExtension()Lcom/mediatek/phone/ext/OthersSettingsExtension;
    .locals 1

    .prologue
    .line 123
    const-string v0, "getOthersSettingsExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mOthersSettingsExtensionContainer:Lcom/mediatek/phone/ext/OthersSettingsExtensionContainer;

    return-object v0
.end method

.method public getPhoneCallOptionHandlerExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtension;
    .locals 1

    .prologue
    .line 109
    const-string v0, "getPhoneCallOptionHandlerExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneCallOptionHandlerExtensionContainer:Lcom/mediatek/phone/ext/PhoneCallOptionHandlerExtensionContainer;

    return-object v0
.end method

.method public getPhoneCallOptionHandlerFactoryExtension()Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtension;
    .locals 1

    .prologue
    .line 114
    const-string v0, "getPhoneCallOptionHandlerExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneCallOptionHandlerFactoryExtensionContainer:Lcom/mediatek/phone/ext/PhoneCallOptionHandlerFactoryExtensionContainer;

    return-object v0
.end method

.method public getPhoneGlobalsBroadcastReceiverExtension()Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtension;
    .locals 1

    .prologue
    .line 99
    const-string v0, "getPhoneGlobalsBroadcastReceiverExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneGlobalsBroadcastReceiverExtensionContainer:Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtensionContainer;

    return-object v0
.end method

.method public getPhoneGlobalsExtension()Lcom/mediatek/phone/ext/PhoneGlobalsExtension;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mPhoneGlobalsExtensionContainer:Lcom/mediatek/phone/ext/PhoneGlobalsExtensionContainer;

    return-object v0
.end method

.method public getSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;
    .locals 1

    .prologue
    .line 132
    const-string v0, "getSettingsExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mSettingsExtensionContainer:Lcom/mediatek/phone/ext/SettingsExtensionContainer;

    return-object v0
.end method

.method public getVTInCallScreenFlagsExtension()Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtension;
    .locals 1

    .prologue
    .line 73
    const-string v0, "getVTInCallScreenFlagsExtension()"

    invoke-static {v0}, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->log(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/mediatek/phone/ext/PhonePluginExtensionContainer;->mVTInCallScreenFlagsExtensionContainer:Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtensionContainer;

    return-object v0
.end method
