package com.zb666

class FitFactory private constructor() {

    companion object {
        val instance: FitFactory by lazy { FitFactory() }
    }

}