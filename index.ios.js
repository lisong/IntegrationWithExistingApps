'use strict';

import React from 'react';
import CodePush from "react-native-code-push";
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  TouchableOpacity
} from 'react-native';

class RNHighScores extends React.Component {
  sync() {
    CodePush.sync(
      {
        installMode: CodePush.InstallMode.IMMEDIATE,
        updateDialog: true
      }
    );
  }
  render() {
    var contents = this.props["scores"].map(
      score => <Text key={score.name}>{score.name}:{score.value}{"\n"}</Text>
    );
    return (
      <View style={styles.container}>
        <Text style={styles.highScoresTitle}>
          Page1 old!
        </Text>
        <TouchableOpacity onPress={this.sync.bind(this)}>
          <Text style={styles.syncButton}>Start Sync!</Text>
        </TouchableOpacity>
        <Text style={styles.scores}>
          {contents}
        </Text>
      </View>
    );
  }
}

class RNHighScores2 extends React.Component {
  sync() {
    CodePush.sync(
      {
        installMode: CodePush.InstallMode.IMMEDIATE,
        updateDialog: true
      }
    );
  }
  render() {
    var contents = this.props["scores"].map(
      score => <Text key={score.name}>{score.name}:{score.value}{"\n"}</Text>
    );
    return (
      <View style={styles.container}>
        <Text style={styles.highScoresTitle}>
          Page2 old!
        </Text>
        <TouchableOpacity onPress={this.sync.bind(this)}>
          <Text style={styles.syncButton}>Start Sync!</Text>
        </TouchableOpacity>
        <Text style={styles.scores}>
          {contents}
        </Text>
      </View>
    );
  }
}

class RNHighScores3 extends React.Component {
  sync() {
    CodePush.sync(
      {
        installMode: CodePush.InstallMode.IMMEDIATE,
        updateDialog: true
      }
    );
  }
  render() {
    var contents = this.props["scores"].map(
      score => <Text key={score.name}>{score.name}:{score.value}{"\n"}</Text>
    );
    return (
      <View style={styles.container}>
        <Text style={styles.highScoresTitle}>
          Page3 old!
        </Text>
        <TouchableOpacity onPress={this.sync.bind(this)}>
          <Text style={styles.syncButton}>Start Sync!</Text>
        </TouchableOpacity>
        <Text style={styles.scores}>
          {contents}
        </Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF',
  },
  syncButton: {
    color: "green",
    fontSize: 17
  },
  highScoresTitle: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  scores: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

// Module name
AppRegistry.registerComponent('RNHighScores', () => RNHighScores);
AppRegistry.registerComponent('RNHighScores2', () => RNHighScores2);
AppRegistry.registerComponent('RNHighScores3', () => RNHighScores3);
